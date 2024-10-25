import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/shared/shared.dart';

part 'captured_state.dart';
part 'captured_cubit.freezed.dart';

class CapturedCubit extends Cubit<CapturedState> {
  CapturedCubit({
    PreferencesRepository? preferencesRepository,
  }) : super(const CapturedState()) {
    _getPokemonUsecase = GetPokemonUsecase(
      preferencesRepository ?? PreferencesRepository(),
    );
  }

  late GetPokemonUsecase _getPokemonUsecase;

  Future<void> init() async {
    var capturedPokemons = await _getPokemonUsecase.execute();

    if (state.typesFilter.isNotEmpty) {
      capturedPokemons = capturedPokemons
          .where((pokemon) => pokemon.types.any((type) => state.typesFilter
              .where((filter) => filter.name == type.type.name)
              .isNotEmpty))
          .toList();
    }

    final typesGroup = capturedPokemons
        .map((e) => e.types)
        .expand(
          (element) => element.map((e) => e.type),
        )
        .fold<Map<String, int>>(
      {},
      (previousValue, element) {
        final key = element.name;
        previousValue[key] = (previousValue[key] ?? 0) + 1;
        return previousValue;
      },
    );

    final maxFrequency = typesGroup.values.isNotEmpty
        ? typesGroup.values.reduce((a, b) => a > b ? a : b)
        : 0;

    final mostFrequentTypes = typesGroup.entries
        .where((entry) => entry.value == maxFrequency)
        .toList();

    final mostFrequentType =
        mostFrequentTypes.length == 1 ? mostFrequentTypes.first.key : null;

    emit(
      state.copyWith(
        capturedPokemons: capturedPokemons,
        mostFrequentType: mostFrequentType,
      ),
    );
  }

  void updateTypesFilter(PokemonType types) {
    final typesFilter = state.typesFilter.contains(types)
        ? state.typesFilter.where((filter) => filter != types).toList()
        : [...state.typesFilter, types];

    emit(
      state.copyWith(
        typesFilter: typesFilter,
      ),
    );

    init();
  }
}
