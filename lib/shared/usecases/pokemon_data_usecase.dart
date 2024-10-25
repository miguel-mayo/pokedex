import 'package:pokedex/shared/shared.dart';

class GetPokemonUsecase {
  final PreferencesRepository _repository;

  GetPokemonUsecase(this._repository);

  Future<List<PokemonModel>> execute() async {
    final stored = await _repository.get('captured') ?? [];

    return stored.map((e) => PokemonModel.fromJson(e)).toList();
  }
}

class SavePokemonUsecase {
  final PreferencesRepository _repository;

  SavePokemonUsecase(this._repository);

  Future<List<PokemonModel>> execute(PokemonModel pokemon) async {
    final stored = await GetPokemonUsecase(_repository).execute();

    stored.add(pokemon);

    await _repository.set(
      'captured',
      stored.map((e) => e.toJson()).toList(),
    );

    return stored;
  }
}

class RemovePokemonUsecase {
  final PreferencesRepository _repository;

  RemovePokemonUsecase(this._repository);

  Future<List<PokemonModel>> execute(PokemonModel pokemon) async {
    final stored = await GetPokemonUsecase(_repository).execute();

    stored.removeWhere((element) => element.id == pokemon.id);

    await _repository.set(
      'captured',
      stored.map((e) => e.toJson()).toList(),
    );

    return stored;
  }
}
