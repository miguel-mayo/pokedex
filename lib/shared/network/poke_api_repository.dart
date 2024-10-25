import 'package:pokedex/shared/network/api_base.dart';
import 'package:pokedex/shared/shared.dart';

class PokeApiRepository extends APIBase {
  final PokedexLocalDatasource _pokedexDataSource;
  final PokemonsLocalDatasource _pokemonDataSource;
  final SpeciesLocalDatasource _speciesDataSource;

  PokeApiRepository({
    PokedexLocalDatasource? pokedexDatasource,
    PokemonsLocalDatasource? pokemonDatasource,
    SpeciesLocalDatasource? speciesDatasource,
  })  : _pokedexDataSource = pokedexDatasource ?? PokedexLocalDatasource(),
        _pokemonDataSource = pokemonDatasource ?? PokemonsLocalDatasource(),
        _speciesDataSource = speciesDatasource ?? SpeciesLocalDatasource();

  // Get all pokemons
  Future<PokedexModel> getAllPokemons({
    String region = 'kanto',
  }) async {
    final cachePokedex = _pokedexDataSource.get();

    if (cachePokedex != null) {
      return cachePokedex;
    }

    final response = await get(path: '/pokedex/$region', query: {});

    final pokedex = PokedexModel.fromJson(response);

    _pokedexDataSource.setCache(pokedex);

    return pokedex;
  }

  // Get pokemon details
  Future<PokemonModel> getPokemonDetails({
    required String name,
  }) async {
    final cachePokemon = _pokemonDataSource.get();

    if (cachePokemon != null) {
      final pokemon = cachePokemon.firstWhere((element) => element.name == name,
          orElse: () => PokemonModel.empty);
      if (pokemon != PokemonModel.empty) {
        return pokemon;
      }
    }
    final response = await get(path: '/pokemon/$name', query: {});

    final pokemon = PokemonModel.fromJson(response);

    _pokemonDataSource.setCache([...cachePokemon ?? [], pokemon]);

    return pokemon;
  }

  // Get species details
  Future<PokemonSpecieModel> getPokemonSpecies({
    required String name,
  }) async {
    final cacheSpecies = _speciesDataSource.get();

    if (cacheSpecies != null) {
      final species = cacheSpecies.firstWhere((element) => element.name == name,
          orElse: () => PokemonSpecieModel.empty);
      if (species != PokemonSpecieModel.empty) {
        return species;
      }
    }

    final response = await get(path: '/pokemon-species/$name', query: {});

    final species = PokemonSpecieModel.fromJson(response);

    _speciesDataSource.setCache([...cacheSpecies ?? [], species]);

    return species;
  }
}
