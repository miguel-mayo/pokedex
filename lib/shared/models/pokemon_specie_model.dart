// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/shared/models/models.dart';

part 'pokemon_specie_model.freezed.dart';
part 'pokemon_specie_model.g.dart';

@freezed
class PokemonSpecieModel with _$PokemonSpecieModel {
  const factory PokemonSpecieModel({
    required int id,
    required String name,
    required int order,
    @JsonKey(name: 'gender_rate') required int genderRate,
    @JsonKey(name: 'capture_rate') required int captureRate,
    @JsonKey(name: 'base_happiness') required int baseHappiness,
    @JsonKey(name: 'is_baby') required bool isBaby,
    @JsonKey(name: 'is_legendary') required bool isLegendary,
    @JsonKey(name: 'is_mythical') required bool isMythical,
    @JsonKey(name: 'hatch_counter') required int hatchCounter,
    @JsonKey(name: 'has_gender_differences') required bool hasGenderDifferences,
    @JsonKey(name: 'forms_switchable') required bool formsSwitchable,
    @JsonKey(name: 'growth_rate') required NamedAPIResource growthRate,
    @JsonKey(name: 'pokedex_numbers')
    required List<PokemonSpeciesDexEntry> pokedexNumbers,
    @JsonKey(name: 'egg_groups') required List<NamedAPIResource> eggGroups,
    required NamedAPIResource color,
    required NamedAPIResource shape,
    @JsonKey(name: 'evolves_from_species') NamedAPIResource? evolvesFromSpecies,
    @JsonKey(name: 'evolution_chain') required APIResource evolutionChain,
    required NamedAPIResource habitat,
    required NamedAPIResource generation,
    required List<Name> names,
    @JsonKey(name: 'pal_park_encounters')
    required List<PalParkEncounterArea> palParkEncounters,
    @JsonKey(name: 'flavor_text_entries')
    required List<FlavorText> flavorTextEntries,
    @JsonKey(name: 'form_descriptions')
    required List<Description> formDescriptions,
    required List<Genus> genera,
    required List<PokemonSpeciesVariety> varieties,
  }) = _PokemonSpecieModel;

  const PokemonSpecieModel._();

  static const empty = PokemonSpecieModel(
    id: 0,
    name: '',
    order: 0,
    genderRate: 0,
    captureRate: 0,
    baseHappiness: 0,
    isBaby: false,
    isLegendary: false,
    isMythical: false,
    hatchCounter: 0,
    hasGenderDifferences: false,
    formsSwitchable: false,
    growthRate: NamedAPIResource(name: '', url: ''),
    pokedexNumbers: [],
    eggGroups: [],
    color: NamedAPIResource(name: '', url: ''),
    shape: NamedAPIResource(name: '', url: ''),
    evolvesFromSpecies: null,
    evolutionChain: APIResource(url: ''),
    habitat: NamedAPIResource(name: '', url: ''),
    generation: NamedAPIResource(name: '', url: ''),
    names: [],
    palParkEncounters: [],
    flavorTextEntries: [],
    formDescriptions: [],
    genera: [],
    varieties: [],
  );

  factory PokemonSpecieModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpecieModelFromJson(json);
}

@freezed
class PokemonSpeciesDexEntry with _$PokemonSpeciesDexEntry {
  const factory PokemonSpeciesDexEntry({
    @JsonKey(name: 'entry_number') required int entryNumber,
    required NamedAPIResource pokedex,
  }) = _PokemonSpeciesDexEntry;

  factory PokemonSpeciesDexEntry.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesDexEntryFromJson(json);
}

@freezed
class PalParkEncounterArea with _$PalParkEncounterArea {
  const factory PalParkEncounterArea({
    @JsonKey(name: 'base_score') required int baseScore,
    required int rate,
    required NamedAPIResource area,
  }) = _PalParkEncounterArea;

  factory PalParkEncounterArea.fromJson(Map<String, dynamic> json) =>
      _$PalParkEncounterAreaFromJson(json);
}

@freezed
class FlavorText with _$FlavorText {
  const factory FlavorText({
    @JsonKey(name: 'flavor_text') required String flavorText,
    required NamedAPIResource language,
    required NamedAPIResource version,
  }) = _FlavorText;

  factory FlavorText.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextFromJson(json);
}

@freezed
class Genus with _$Genus {
  const factory Genus({
    required String genus,
    required NamedAPIResource language,
  }) = _Genus;

  factory Genus.fromJson(Map<String, dynamic> json) => _$GenusFromJson(json);
}

@freezed
class PokemonSpeciesVariety with _$PokemonSpeciesVariety {
  const factory PokemonSpeciesVariety({
    @JsonKey(name: 'is_default') required bool isDefault,
    required NamedAPIResource pokemon,
  }) = _PokemonSpeciesVariety;

  factory PokemonSpeciesVariety.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesVarietyFromJson(json);
}
