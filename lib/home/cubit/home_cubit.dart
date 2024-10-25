import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/shared/shared.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    PokeApiRepository? repository,
  })  : _repository = repository ?? PokeApiRepository(),
        super(const HomeState());

  final PokeApiRepository _repository;

  late PokedexModel pokedex;

  Future<void> init({int pageSize = 10}) async {
    try {
      emit(state.copyWith(
        pokedexStatus: LoadingStatus.loading,
      ));

      pokedex = await _repository.getAllPokemons();

      await nextPage(page: 0, pageSize: pageSize);

      emit(state.copyWith(
        pokedexStatus: LoadingStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
          pokedexStatus: LoadingStatus.error, errorMessage: e.toString()));
    }
  }

  Future<void> nextPage({
    int pageSize = 10,
    int? page,
  }) async {
    if (state.pokemonStatus == LoadingStatus.loading) return;

    emit(state.copyWith(pokemonStatus: LoadingStatus.loading));

    final nameFilter = state.nameFilter;

    final nextPage = page ?? state.currentPage + 1;

    try {
      var pokemonEntries = pokedex.pokemonEntries
          .where((element) =>
              // Search by name if nameFilter is not null
              nameFilter == null ||
              element.pokemonSpecies.name
                  .toLowerCase()
                  .contains(nameFilter.toLowerCase()))
          .toList();

      if (nextPage * pageSize >= pokemonEntries.length) {
        await Future.delayed(const Duration(milliseconds: 500));
        emit(state.copyWith(
          pokemonStatus: LoadingStatus.success,
          hasReachedEnd: true,
        ));
        return;
      }

      final nextPageEntries = pokemonEntries.sublist(
          nextPage * pageSize,
          // Limit the number of pokemons to the next page
          min(pokemonEntries.length, (nextPage + 1) * pageSize));

      final nextPagePokemons = <PokemonModel>[];

      for (var pokemon in nextPageEntries) {
        final pokemonDetail = await _repository.getPokemonDetails(
            name: pokemon.pokemonSpecies.name);
        nextPagePokemons.add(pokemonDetail);
      }

      emit(
        state.copyWith(
          pokemonStatus: LoadingStatus.success,
          pokemons: page == 0
              ? nextPagePokemons
              : [...state.pokemons, ...nextPagePokemons],
          currentPage: nextPage,
          hasReachedEnd: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
          pokemonStatus: LoadingStatus.error, errorMessage: e.toString()));
    }
  }

  void updateNameFilter(String? nameFilter) {
    emit(state.copyWith(
      nameFilter: nameFilter,
    ));

    nextPage(
      page: 0,
    );
  }

  void addTypeFilter(PokemonType type) {
    emit(state.copyWith(typesFilter: [...state.typesFilter, type]));
  }

  void removeTypeFilter(PokemonType type) {
    emit(state.copyWith(
        typesFilter: state.typesFilter.where((e) => e != type).toList()));
  }
}
