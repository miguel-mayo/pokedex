// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/shared/models/models.dart';

part 'pokedex_model.freezed.dart';
part 'pokedex_model.g.dart';

@freezed
class PokedexModel with _$PokedexModel {
  const factory PokedexModel({
    required List<Description> descriptions,
    required int id,
    @JsonKey(name: 'is_main_series') required bool isMainSeries,
    required String name,
    required List<Name> names,
    @JsonKey(name: 'pokemon_entries')
    required List<PokemonEntry> pokemonEntries,
    required Region region,
    @JsonKey(name: 'version_groups') required List<VersionGroup> versionGroups,
  }) = _PokedexModel;

  const PokedexModel._();

  static const empty = PokedexModel(
    descriptions: [],
    id: 0,
    isMainSeries: false,
    name: '',
    names: [],
    pokemonEntries: [],
    region: Region(name: '', url: ''),
    versionGroups: [],
  );

  factory PokedexModel.fromJson(Map<String, dynamic> json) =>
      _$PokedexModelFromJson(json);
}

@freezed
class PokemonEntry with _$PokemonEntry {
  const factory PokemonEntry({
    @JsonKey(name: 'entry_number') required int entryNumber,
    @JsonKey(name: 'pokemon_species') required PokemonSpecies pokemonSpecies,
  }) = _PokemonEntry;

  factory PokemonEntry.fromJson(Map<String, dynamic> json) =>
      _$PokemonEntryFromJson(json);
}

@freezed
class PokemonSpecies with _$PokemonSpecies {
  const factory PokemonSpecies({
    required String name,
    required String url,
  }) = _PokemonSpecies;

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesFromJson(json);
}

@freezed
class Region with _$Region {
  const factory Region({
    required String name,
    required String url,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

@freezed
class VersionGroup with _$VersionGroup {
  const factory VersionGroup({
    required String name,
    required String url,
  }) = _VersionGroup;

  factory VersionGroup.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupFromJson(json);
}
