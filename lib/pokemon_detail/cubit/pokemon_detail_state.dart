part of 'pokemon_detail_cubit.dart';

@freezed
class PokemonDetailState with _$PokemonDetailState {
  const factory PokemonDetailState({
    @Default(LoadingStatus.initial) LoadingStatus status,
    @Default(PokemonModel.empty) PokemonModel pokemon,
    @Default([]) List<PokemonModel> pokemonStored,
    @Default(PokemonSpecieModel.empty) PokemonSpecieModel pokemonSpecie,
    String? errorMessage,
  }) = _PokemonDetailState;

  const PokemonDetailState._();

  bool get isStored => pokemonStored.any((element) => element.id == pokemon.id);
}
