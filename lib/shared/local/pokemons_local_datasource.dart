import 'package:pokedex/shared/local/local_datasource.dart';
import 'package:pokedex/shared/shared.dart';

class PokedexLocalDatasource extends LocalDataSource<PokedexModel> {}

class PokemonsLocalDatasource extends LocalDataSource<List<PokemonModel>> {}

class SpeciesLocalDatasource
    extends LocalDataSource<List<PokemonSpecieModel>> {}
