// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonModelImpl _$$PokemonModelImplFromJson(Map<String, dynamic> json) =>
    _$PokemonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      baseExperience: (json['base_experience'] as num).toInt(),
      abilities: (json['abilities'] as List<dynamic>?)
              ?.map((e) => Ability.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      forms: (json['forms'] as List<dynamic>?)
              ?.map((e) => Form.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      locationAreaEncounters: json['location_area_encounters'] as String,
      moves: (json['moves'] as List<dynamic>?)
              ?.map((e) => Move.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gameIndices: (json['gameIndices'] as List<dynamic>?)
              ?.map((e) => GameIndex.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
              ?.map((e) => Type.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stats: (json['stats'] as List<dynamic>?)
              ?.map((e) => Stat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      species: json['species'] == null
          ? Species.empty
          : Species.fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonModelImplToJson(_$PokemonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'base_experience': instance.baseExperience,
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'forms': instance.forms.map((e) => e.toJson()).toList(),
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves.map((e) => e.toJson()).toList(),
      'gameIndices': instance.gameIndices.map((e) => e.toJson()).toList(),
      'sprites': instance.sprites.toJson(),
      'types': instance.types.map((e) => e.toJson()).toList(),
      'stats': instance.stats.map((e) => e.toJson()).toList(),
      'species': instance.species.toJson(),
    };

_$TypeImpl _$$TypeImplFromJson(Map<String, dynamic> json) => _$TypeImpl(
      slot: (json['slot'] as num).toInt(),
      type: TypeDetails.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeImplToJson(_$TypeImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type.toJson(),
    };

_$TypeDetailsImpl _$$TypeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TypeDetailsImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$TypeDetailsImplToJson(_$TypeDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$AbilityImpl _$$AbilityImplFromJson(Map<String, dynamic> json) =>
    _$AbilityImpl(
      ability: AbilityDetails.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$$AbilityImplToJson(_$AbilityImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability.toJson(),
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };

_$AbilityDetailsImpl _$$AbilityDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AbilityDetailsImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$AbilityDetailsImplToJson(
        _$AbilityDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$FormImpl _$$FormImplFromJson(Map<String, dynamic> json) => _$FormImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$FormImplToJson(_$FormImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$MoveImpl _$$MoveImplFromJson(Map<String, dynamic> json) => _$MoveImpl(
      move: MoveDetails.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>)
          .map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MoveImplToJson(_$MoveImpl instance) =>
    <String, dynamic>{
      'move': instance.move.toJson(),
      'version_group_details':
          instance.versionGroupDetails.map((e) => e.toJson()).toList(),
    };

_$MoveDetailsImpl _$$MoveDetailsImplFromJson(Map<String, dynamic> json) =>
    _$MoveDetailsImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$MoveDetailsImplToJson(_$MoveDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$VersionGroupDetailImpl _$$VersionGroupDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$VersionGroupDetailImpl(
      levelLearnedAt: (json['level_learned_at'] as num).toInt(),
      moveLearnMethod: MoveLearnMethod.fromJson(
          json['move_learn_method'] as Map<String, dynamic>),
      versionGroup:
          VersionGroup.fromJson(json['version_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VersionGroupDetailImplToJson(
        _$VersionGroupDetailImpl instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'move_learn_method': instance.moveLearnMethod.toJson(),
      'version_group': instance.versionGroup.toJson(),
    };

_$MoveLearnMethodImpl _$$MoveLearnMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$MoveLearnMethodImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$MoveLearnMethodImplToJson(
        _$MoveLearnMethodImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$GameIndexImpl _$$GameIndexImplFromJson(Map<String, dynamic> json) =>
    _$GameIndexImpl(
      gameIndex: (json['game_index'] as num).toInt(),
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameIndexImplToJson(_$GameIndexImpl instance) =>
    <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.version.toJson(),
    };

_$VersionImpl _$$VersionImplFromJson(Map<String, dynamic> json) =>
    _$VersionImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$VersionImplToJson(_$VersionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$SpritesImpl _$$SpritesImplFromJson(Map<String, dynamic> json) =>
    _$SpritesImpl(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
      other: json['other'] == null
          ? null
          : OtherSprites.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpritesImplToJson(_$SpritesImpl instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
      'other': instance.other?.toJson(),
    };

_$OtherSpritesImpl _$$OtherSpritesImplFromJson(Map<String, dynamic> json) =>
    _$OtherSpritesImpl(
      dreamWorld: json['dreamWorld'] == null
          ? null
          : DreamWorldSprites.fromJson(
              json['dreamWorld'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : HomeSprites.fromJson(json['home'] as Map<String, dynamic>),
      officialArtwork: json['officialArtwork'] == null
          ? null
          : OfficialArtworkSprites.fromJson(
              json['officialArtwork'] as Map<String, dynamic>),
      showdown: json['showdown'] == null
          ? null
          : ShowdownSprites.fromJson(json['showdown'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherSpritesImplToJson(_$OtherSpritesImpl instance) =>
    <String, dynamic>{
      'dreamWorld': instance.dreamWorld?.toJson(),
      'home': instance.home?.toJson(),
      'officialArtwork': instance.officialArtwork?.toJson(),
      'showdown': instance.showdown?.toJson(),
    };

_$DreamWorldSpritesImpl _$$DreamWorldSpritesImplFromJson(
        Map<String, dynamic> json) =>
    _$DreamWorldSpritesImpl(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
    );

Map<String, dynamic> _$$DreamWorldSpritesImplToJson(
        _$DreamWorldSpritesImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
    };

_$HomeSpritesImpl _$$HomeSpritesImplFromJson(Map<String, dynamic> json) =>
    _$HomeSpritesImpl(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$$HomeSpritesImplToJson(_$HomeSpritesImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

_$OfficialArtworkSpritesImpl _$$OfficialArtworkSpritesImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkSpritesImpl(
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

Map<String, dynamic> _$$OfficialArtworkSpritesImplToJson(
        _$OfficialArtworkSpritesImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

_$ShowdownSpritesImpl _$$ShowdownSpritesImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowdownSpritesImpl(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$$ShowdownSpritesImplToJson(
        _$ShowdownSpritesImpl instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: StatDetails.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat.toJson(),
    };

_$StatDetailsImpl _$$StatDetailsImplFromJson(Map<String, dynamic> json) =>
    _$StatDetailsImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$StatDetailsImplToJson(_$StatDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$SpeciesImpl _$$SpeciesImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$SpeciesImplToJson(_$SpeciesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
