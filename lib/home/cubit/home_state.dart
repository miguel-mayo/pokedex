part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(LoadingStatus.initial) LoadingStatus pokedexStatus,
    @Default(LoadingStatus.initial) LoadingStatus pokemonStatus,
    @Default([]) List<PokemonModel> pokemons,
    @Default(0) int currentPage,
    @Default([]) List<PokemonType> typesFilter,
    @Default(false) bool hasReachedEnd,
    String? nameFilter,
    String? errorMessage,
  }) = _HomeState;
}
