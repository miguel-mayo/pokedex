// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/shared/models/pokedex_model.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required int id,
    required String name,
    required int height,
    required int weight,
    @JsonKey(name: 'base_experience') required int baseExperience,
    @Default([]) List<Ability> abilities,
    @Default([]) List<Form> forms,
    @JsonKey(name: 'location_area_encounters')
    required String locationAreaEncounters,
    @Default([]) List<Move> moves,
    @Default([]) List<GameIndex> gameIndices,
    required Sprites sprites,
    @Default([]) List<Type> types,
    @Default([]) List<Stat> stats,
    @Default(Species.empty) Species species,
  }) = _PokemonModel;

  const PokemonModel._();

  static const empty = PokemonModel(
    id: 0,
    name: '',
    height: 0,
    weight: 0,
    baseExperience: 0,
    abilities: [],
    forms: [],
    locationAreaEncounters: '',
    moves: [],
    gameIndices: [],
    sprites: Sprites(),
    types: [],
    stats: [],
    species: Species(name: '', url: ''),
  );

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}

@freezed
class Type with _$Type {
  const factory Type({
    required int slot,
    required TypeDetails type,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}

@freezed
class TypeDetails with _$TypeDetails {
  const factory TypeDetails({
    required String name,
    required String url,
  }) = _TypeDetails;

  factory TypeDetails.fromJson(Map<String, dynamic> json) =>
      _$TypeDetailsFromJson(json);
}

@freezed
class Ability with _$Ability {
  const factory Ability({
    required AbilityDetails ability,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}

@freezed
class AbilityDetails with _$AbilityDetails {
  const factory AbilityDetails({
    required String name,
    required String url,
  }) = _AbilityDetails;

  factory AbilityDetails.fromJson(Map<String, dynamic> json) =>
      _$AbilityDetailsFromJson(json);
}

@freezed
class Form with _$Form {
  const factory Form({
    required String name,
    required String url,
  }) = _Form;

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);
}

@freezed
class Move with _$Move {
  const factory Move({
    required MoveDetails move,
    @JsonKey(name: 'version_group_details')
    required List<VersionGroupDetail> versionGroupDetails,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}

@freezed
class MoveDetails with _$MoveDetails {
  const factory MoveDetails({
    required String name,
    required String url,
  }) = _MoveDetails;

  factory MoveDetails.fromJson(Map<String, dynamic> json) =>
      _$MoveDetailsFromJson(json);
}

@freezed
class VersionGroupDetail with _$VersionGroupDetail {
  const factory VersionGroupDetail({
    @JsonKey(name: 'level_learned_at') required int levelLearnedAt,
    @JsonKey(name: 'move_learn_method')
    required MoveLearnMethod moveLearnMethod,
    @JsonKey(name: 'version_group') required VersionGroup versionGroup,
  }) = _VersionGroupDetail;

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailFromJson(json);
}

@freezed
class MoveLearnMethod with _$MoveLearnMethod {
  const factory MoveLearnMethod({
    required String name,
    required String url,
  }) = _MoveLearnMethod;

  factory MoveLearnMethod.fromJson(Map<String, dynamic> json) =>
      _$MoveLearnMethodFromJson(json);
}

@freezed
class GameIndex with _$GameIndex {
  const factory GameIndex({
    @JsonKey(name: 'game_index') required int gameIndex,
    required Version version,
  }) = _GameIndex;

  factory GameIndex.fromJson(Map<String, dynamic> json) =>
      _$GameIndexFromJson(json);
}

@freezed
class Version with _$Version {
  const factory Version({
    required String name,
    required String url,
  }) = _Version;

  factory Version.fromJson(Map<String, dynamic> json) =>
      _$VersionFromJson(json);
}

// Definición de Sprites
@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_female') String? backFemale,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'back_shiny_female') String? backShinyFemale,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
    OtherSprites? other,
    // Versions? versions,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class OtherSprites with _$OtherSprites {
  const factory OtherSprites({
    DreamWorldSprites? dreamWorld,
    HomeSprites? home,
    OfficialArtworkSprites? officialArtwork,
    ShowdownSprites? showdown,
  }) = _OtherSprites;

  factory OtherSprites.fromJson(Map<String, dynamic> json) =>
      _$OtherSpritesFromJson(json);
}

@freezed
class DreamWorldSprites with _$DreamWorldSprites {
  const factory DreamWorldSprites({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
  }) = _DreamWorldSprites;

  factory DreamWorldSprites.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldSpritesFromJson(json);
}

@freezed
class HomeSprites with _$HomeSprites {
  const factory HomeSprites({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
  }) = _HomeSprites;

  factory HomeSprites.fromJson(Map<String, dynamic> json) =>
      _$HomeSpritesFromJson(json);
}

@freezed
class OfficialArtworkSprites with _$OfficialArtworkSprites {
  const factory OfficialArtworkSprites({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
  }) = _OfficialArtworkSprites;

  factory OfficialArtworkSprites.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkSpritesFromJson(json);
}

@freezed
class ShowdownSprites with _$ShowdownSprites {
  const factory ShowdownSprites({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_female') String? backFemale,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'back_shiny_female') String? backShinyFemale,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
  }) = _ShowdownSprites;

  factory ShowdownSprites.fromJson(Map<String, dynamic> json) =>
      _$ShowdownSpritesFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    required StatDetails stat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

@freezed
class StatDetails with _$StatDetails {
  const factory StatDetails({
    required String name,
    required String url,
  }) = _StatDetails;

  factory StatDetails.fromJson(Map<String, dynamic> json) =>
      _$StatDetailsFromJson(json);
}

@freezed
class Species with _$Species {
  const factory Species({
    required String name,
    required String url,
  }) = _Species;

  const Species._();

  static const empty = Species(name: '', url: '');

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);
}
