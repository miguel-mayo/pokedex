part of 'captured_cubit.dart';

@freezed
class CapturedState with _$CapturedState {
  const factory CapturedState({
    @Default([]) List<PokemonModel> capturedPokemons,
    @Default([]) List<PokemonType> typesFilter,
    String? mostFrequentType,
  }) = _CapturedState;

  const CapturedState._();

  List<PokemonType> get availableTypes {
    return PokemonType.values
        .where((type) => !typesFilter.contains(type))
        .toList();
  }
}
