// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexModelImpl _$$PokedexModelImplFromJson(Map<String, dynamic> json) =>
    _$PokedexModelImpl(
      descriptions: (json['descriptions'] as List<dynamic>)
          .map((e) => Description.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num).toInt(),
      isMainSeries: json['is_main_series'] as bool,
      name: json['name'] as String,
      names: (json['names'] as List<dynamic>)
          .map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokemonEntries: (json['pokemon_entries'] as List<dynamic>)
          .map((e) => PokemonEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      versionGroups: (json['version_groups'] as List<dynamic>)
          .map((e) => VersionGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokedexModelImplToJson(_$PokedexModelImpl instance) =>
    <String, dynamic>{
      'descriptions': instance.descriptions.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'is_main_series': instance.isMainSeries,
      'name': instance.name,
      'names': instance.names.map((e) => e.toJson()).toList(),
      'pokemon_entries':
          instance.pokemonEntries.map((e) => e.toJson()).toList(),
      'region': instance.region.toJson(),
      'version_groups': instance.versionGroups.map((e) => e.toJson()).toList(),
    };

_$PokemonEntryImpl _$$PokemonEntryImplFromJson(Map<String, dynamic> json) =>
    _$PokemonEntryImpl(
      entryNumber: (json['entry_number'] as num).toInt(),
      pokemonSpecies: PokemonSpecies.fromJson(
          json['pokemon_species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonEntryImplToJson(_$PokemonEntryImpl instance) =>
    <String, dynamic>{
      'entry_number': instance.entryNumber,
      'pokemon_species': instance.pokemonSpecies.toJson(),
    };

_$PokemonSpeciesImpl _$$PokemonSpeciesImplFromJson(Map<String, dynamic> json) =>
    _$PokemonSpeciesImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonSpeciesImplToJson(
        _$PokemonSpeciesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$VersionGroupImpl _$$VersionGroupImplFromJson(Map<String, dynamic> json) =>
    _$VersionGroupImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$VersionGroupImplToJson(_$VersionGroupImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
