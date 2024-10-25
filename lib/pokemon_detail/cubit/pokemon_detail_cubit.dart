import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/shared/shared.dart';

part 'pokemon_detail_cubit.freezed.dart';
part 'pokemon_detail_state.dart';

class PokemonDetailCubit extends Cubit<PokemonDetailState> {
  PokemonDetailCubit({
    PokeApiRepository? repository,
    PreferencesRepository? preferencesRepository,
  })  : _repository = repository ?? PokeApiRepository(),
        _preferencesRepository =
            preferencesRepository ?? PreferencesRepository(),
        super(const PokemonDetailState()) {
    _getPokemonUsecase = GetPokemonUsecase(_preferencesRepository);
    _savePokemonUsecase = SavePokemonUsecase(_preferencesRepository);
    _removePokemonUsecase = RemovePokemonUsecase(_preferencesRepository);
  }

  final PokeApiRepository _repository;
  final PreferencesRepository _preferencesRepository;
  late GetPokemonUsecase _getPokemonUsecase;
  late SavePokemonUsecase _savePokemonUsecase;
  late RemovePokemonUsecase _removePokemonUsecase;

  Future<void> init(PokemonModel pokemon) async {
    try {
      emit(state.copyWith(
        pokemon: pokemon,
        status: LoadingStatus.loading,
      ));

      final pokemonSpecie =
          await _repository.getPokemonSpecies(name: pokemon.name);

      final stored = await _getPokemonUsecase.execute();

      emit(state.copyWith(
        status: LoadingStatus.success,
        pokemonSpecie: pokemonSpecie,
        pokemonStored: stored,
      ));

      pokemonSpecie.color.name;
    } catch (e) {
      emit(state.copyWith(
        status: LoadingStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> updateCaptured(PokemonModel pokemon) async {
    final stored = state.isStored
        ? await _removePokemonUsecase.execute(pokemon)
        : await _savePokemonUsecase.execute(pokemon);

    emit(state.copyWith(
      pokemonStored: stored,
    ));
  }
}
