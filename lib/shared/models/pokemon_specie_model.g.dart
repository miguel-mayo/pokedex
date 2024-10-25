// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_specie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpecieModelImpl _$$PokemonSpecieModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpecieModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      genderRate: (json['gender_rate'] as num).toInt(),
      captureRate: (json['capture_rate'] as num).toInt(),
      baseHappiness: (json['base_happiness'] as num).toInt(),
      isBaby: json['is_baby'] as bool,
      isLegendary: json['is_legendary'] as bool,
      isMythical: json['is_mythical'] as bool,
      hatchCounter: (json['hatch_counter'] as num).toInt(),
      hasGenderDifferences: json['has_gender_differences'] as bool,
      formsSwitchable: json['forms_switchable'] as bool,
      growthRate: NamedAPIResource.fromJson(
          json['growth_rate'] as Map<String, dynamic>),
      pokedexNumbers: (json['pokedex_numbers'] as List<dynamic>)
          .map(
              (e) => PokemonSpeciesDexEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      eggGroups: (json['egg_groups'] as List<dynamic>)
          .map((e) => NamedAPIResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: NamedAPIResource.fromJson(json['color'] as Map<String, dynamic>),
      shape: NamedAPIResource.fromJson(json['shape'] as Map<String, dynamic>),
      evolvesFromSpecies: json['evolves_from_species'] == null
          ? null
          : NamedAPIResource.fromJson(
              json['evolves_from_species'] as Map<String, dynamic>),
      evolutionChain:
          APIResource.fromJson(json['evolution_chain'] as Map<String, dynamic>),
      habitat:
          NamedAPIResource.fromJson(json['habitat'] as Map<String, dynamic>),
      generation:
          NamedAPIResource.fromJson(json['generation'] as Map<String, dynamic>),
      names: (json['names'] as List<dynamic>)
          .map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
      palParkEncounters: (json['pal_park_encounters'] as List<dynamic>)
          .map((e) => PalParkEncounterArea.fromJson(e as Map<String, dynamic>))
          .toList(),
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorText.fromJson(e as Map<String, dynamic>))
          .toList(),
      formDescriptions: (json['form_descriptions'] as List<dynamic>)
          .map((e) => Description.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => Genus.fromJson(e as Map<String, dynamic>))
          .toList(),
      varieties: (json['varieties'] as List<dynamic>)
          .map((e) => PokemonSpeciesVariety.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonSpecieModelImplToJson(
        _$PokemonSpecieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'gender_rate': instance.genderRate,
      'capture_rate': instance.captureRate,
      'base_happiness': instance.baseHappiness,
      'is_baby': instance.isBaby,
      'is_legendary': instance.isLegendary,
      'is_mythical': instance.isMythical,
      'hatch_counter': instance.hatchCounter,
      'has_gender_differences': instance.hasGenderDifferences,
      'forms_switchable': instance.formsSwitchable,
      'growth_rate': instance.growthRate.toJson(),
      'pokedex_numbers':
          instance.pokedexNumbers.map((e) => e.toJson()).toList(),
      'egg_groups': instance.eggGroups.map((e) => e.toJson()).toList(),
      'color': instance.color.toJson(),
      'shape': instance.shape.toJson(),
      'evolves_from_species': instance.evolvesFromSpecies?.toJson(),
      'evolution_chain': instance.evolutionChain.toJson(),
      'habitat': instance.habitat.toJson(),
      'generation': instance.generation.toJson(),
      'names': instance.names.map((e) => e.toJson()).toList(),
      'pal_park_encounters':
          instance.palParkEncounters.map((e) => e.toJson()).toList(),
      'flavor_text_entries':
          instance.flavorTextEntries.map((e) => e.toJson()).toList(),
      'form_descriptions':
          instance.formDescriptions.map((e) => e.toJson()).toList(),
      'genera': instance.genera.map((e) => e.toJson()).toList(),
      'varieties': instance.varieties.map((e) => e.toJson()).toList(),
    };

_$PokemonSpeciesDexEntryImpl _$$PokemonSpeciesDexEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpeciesDexEntryImpl(
      entryNumber: (json['entry_number'] as num).toInt(),
      pokedex:
          NamedAPIResource.fromJson(json['pokedex'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonSpeciesDexEntryImplToJson(
        _$PokemonSpeciesDexEntryImpl instance) =>
    <String, dynamic>{
      'entry_number': instance.entryNumber,
      'pokedex': instance.pokedex.toJson(),
    };

_$PalParkEncounterAreaImpl _$$PalParkEncounterAreaImplFromJson(
        Map<String, dynamic> json) =>
    _$PalParkEncounterAreaImpl(
      baseScore: (json['base_score'] as num).toInt(),
      rate: (json['rate'] as num).toInt(),
      area: NamedAPIResource.fromJson(json['area'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PalParkEncounterAreaImplToJson(
        _$PalParkEncounterAreaImpl instance) =>
    <String, dynamic>{
      'base_score': instance.baseScore,
      'rate': instance.rate,
      'area': instance.area.toJson(),
    };

_$FlavorTextImpl _$$FlavorTextImplFromJson(Map<String, dynamic> json) =>
    _$FlavorTextImpl(
      flavorText: json['flavor_text'] as String,
      language:
          NamedAPIResource.fromJson(json['language'] as Map<String, dynamic>),
      version:
          NamedAPIResource.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FlavorTextImplToJson(_$FlavorTextImpl instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language.toJson(),
      'version': instance.version.toJson(),
    };

_$GenusImpl _$$GenusImplFromJson(Map<String, dynamic> json) => _$GenusImpl(
      genus: json['genus'] as String,
      language:
          NamedAPIResource.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenusImplToJson(_$GenusImpl instance) =>
    <String, dynamic>{
      'genus': instance.genus,
      'language': instance.language.toJson(),
    };

_$PokemonSpeciesVarietyImpl _$$PokemonSpeciesVarietyImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpeciesVarietyImpl(
      isDefault: json['is_default'] as bool,
      pokemon:
          NamedAPIResource.fromJson(json['pokemon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonSpeciesVarietyImplToJson(
        _$PokemonSpeciesVarietyImpl instance) =>
    <String, dynamic>{
      'is_default': instance.isDefault,
      'pokemon': instance.pokemon.toJson(),
    };
