// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_specie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpecieModel _$PokemonSpecieModelFromJson(Map<String, dynamic> json) {
  return _PokemonSpecieModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpecieModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender_rate')
  int get genderRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'capture_rate')
  int get captureRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_happiness')
  int get baseHappiness => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_baby')
  bool get isBaby => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_legendary')
  bool get isLegendary => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mythical')
  bool get isMythical => throw _privateConstructorUsedError;
  @JsonKey(name: 'hatch_counter')
  int get hatchCounter => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_gender_differences')
  bool get hasGenderDifferences => throw _privateConstructorUsedError;
  @JsonKey(name: 'forms_switchable')
  bool get formsSwitchable => throw _privateConstructorUsedError;
  @JsonKey(name: 'growth_rate')
  NamedAPIResource get growthRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'pokedex_numbers')
  List<PokemonSpeciesDexEntry> get pokedexNumbers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'egg_groups')
  List<NamedAPIResource> get eggGroups => throw _privateConstructorUsedError;
  NamedAPIResource get color => throw _privateConstructorUsedError;
  NamedAPIResource get shape => throw _privateConstructorUsedError;
  @JsonKey(name: 'evolves_from_species')
  NamedAPIResource? get evolvesFromSpecies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'evolution_chain')
  APIResource get evolutionChain => throw _privateConstructorUsedError;
  NamedAPIResource get habitat => throw _privateConstructorUsedError;
  NamedAPIResource get generation => throw _privateConstructorUsedError;
  List<Name> get names => throw _privateConstructorUsedError;
  @JsonKey(name: 'pal_park_encounters')
  List<PalParkEncounterArea> get palParkEncounters =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorText> get flavorTextEntries => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_descriptions')
  List<Description> get formDescriptions => throw _privateConstructorUsedError;
  List<Genus> get genera => throw _privateConstructorUsedError;
  List<PokemonSpeciesVariety> get varieties =>
      throw _privateConstructorUsedError;

  /// Serializes this PokemonSpecieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpecieModelCopyWith<PokemonSpecieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpecieModelCopyWith<$Res> {
  factory $PokemonSpecieModelCopyWith(
          PokemonSpecieModel value, $Res Function(PokemonSpecieModel) then) =
      _$PokemonSpecieModelCopyWithImpl<$Res, PokemonSpecieModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int order,
      @JsonKey(name: 'gender_rate') int genderRate,
      @JsonKey(name: 'capture_rate') int captureRate,
      @JsonKey(name: 'base_happiness') int baseHappiness,
      @JsonKey(name: 'is_baby') bool isBaby,
      @JsonKey(name: 'is_legendary') bool isLegendary,
      @JsonKey(name: 'is_mythical') bool isMythical,
      @JsonKey(name: 'hatch_counter') int hatchCounter,
      @JsonKey(name: 'has_gender_differences') bool hasGenderDifferences,
      @JsonKey(name: 'forms_switchable') bool formsSwitchable,
      @JsonKey(name: 'growth_rate') NamedAPIResource growthRate,
      @JsonKey(name: 'pokedex_numbers')
      List<PokemonSpeciesDexEntry> pokedexNumbers,
      @JsonKey(name: 'egg_groups') List<NamedAPIResource> eggGroups,
      NamedAPIResource color,
      NamedAPIResource shape,
      @JsonKey(name: 'evolves_from_species')
      NamedAPIResource? evolvesFromSpecies,
      @JsonKey(name: 'evolution_chain') APIResource evolutionChain,
      NamedAPIResource habitat,
      NamedAPIResource generation,
      List<Name> names,
      @JsonKey(name: 'pal_park_encounters')
      List<PalParkEncounterArea> palParkEncounters,
      @JsonKey(name: 'flavor_text_entries') List<FlavorText> flavorTextEntries,
      @JsonKey(name: 'form_descriptions') List<Description> formDescriptions,
      List<Genus> genera,
      List<PokemonSpeciesVariety> varieties});

  $NamedAPIResourceCopyWith<$Res> get growthRate;
  $NamedAPIResourceCopyWith<$Res> get color;
  $NamedAPIResourceCopyWith<$Res> get shape;
  $NamedAPIResourceCopyWith<$Res>? get evolvesFromSpecies;
  $APIResourceCopyWith<$Res> get evolutionChain;
  $NamedAPIResourceCopyWith<$Res> get habitat;
  $NamedAPIResourceCopyWith<$Res> get generation;
}

/// @nodoc
class _$PokemonSpecieModelCopyWithImpl<$Res, $Val extends PokemonSpecieModel>
    implements $PokemonSpecieModelCopyWith<$Res> {
  _$PokemonSpecieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? genderRate = null,
    Object? captureRate = null,
    Object? baseHappiness = null,
    Object? isBaby = null,
    Object? isLegendary = null,
    Object? isMythical = null,
    Object? hatchCounter = null,
    Object? hasGenderDifferences = null,
    Object? formsSwitchable = null,
    Object? growthRate = null,
    Object? pokedexNumbers = null,
    Object? eggGroups = null,
    Object? color = null,
    Object? shape = null,
    Object? evolvesFromSpecies = freezed,
    Object? evolutionChain = null,
    Object? habitat = null,
    Object? generation = null,
    Object? names = null,
    Object? palParkEncounters = null,
    Object? flavorTextEntries = null,
    Object? formDescriptions = null,
    Object? genera = null,
    Object? varieties = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      genderRate: null == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      captureRate: null == captureRate
          ? _value.captureRate
          : captureRate // ignore: cast_nullable_to_non_nullable
              as int,
      baseHappiness: null == baseHappiness
          ? _value.baseHappiness
          : baseHappiness // ignore: cast_nullable_to_non_nullable
              as int,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      isLegendary: null == isLegendary
          ? _value.isLegendary
          : isLegendary // ignore: cast_nullable_to_non_nullable
              as bool,
      isMythical: null == isMythical
          ? _value.isMythical
          : isMythical // ignore: cast_nullable_to_non_nullable
              as bool,
      hatchCounter: null == hatchCounter
          ? _value.hatchCounter
          : hatchCounter // ignore: cast_nullable_to_non_nullable
              as int,
      hasGenderDifferences: null == hasGenderDifferences
          ? _value.hasGenderDifferences
          : hasGenderDifferences // ignore: cast_nullable_to_non_nullable
              as bool,
      formsSwitchable: null == formsSwitchable
          ? _value.formsSwitchable
          : formsSwitchable // ignore: cast_nullable_to_non_nullable
              as bool,
      growthRate: null == growthRate
          ? _value.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      pokedexNumbers: null == pokedexNumbers
          ? _value.pokedexNumbers
          : pokedexNumbers // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesDexEntry>,
      eggGroups: null == eggGroups
          ? _value.eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      evolvesFromSpecies: freezed == evolvesFromSpecies
          ? _value.evolvesFromSpecies
          : evolvesFromSpecies // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource?,
      evolutionChain: null == evolutionChain
          ? _value.evolutionChain
          : evolutionChain // ignore: cast_nullable_to_non_nullable
              as APIResource,
      habitat: null == habitat
          ? _value.habitat
          : habitat // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      palParkEncounters: null == palParkEncounters
          ? _value.palParkEncounters
          : palParkEncounters // ignore: cast_nullable_to_non_nullable
              as List<PalParkEncounterArea>,
      flavorTextEntries: null == flavorTextEntries
          ? _value.flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorText>,
      formDescriptions: null == formDescriptions
          ? _value.formDescriptions
          : formDescriptions // ignore: cast_nullable_to_non_nullable
              as List<Description>,
      genera: null == genera
          ? _value.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<Genus>,
      varieties: null == varieties
          ? _value.varieties
          : varieties // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesVariety>,
    ) as $Val);
  }

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get growthRate {
    return $NamedAPIResourceCopyWith<$Res>(_value.growthRate, (value) {
      return _then(_value.copyWith(growthRate: value) as $Val);
    });
  }

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get color {
    return $NamedAPIResourceCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get shape {
    return $NamedAPIResourceCopyWith<$Res>(_value.shape, (value) {
      return _then(_value.copyWith(shape: value) as $Val);
    });
  }

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res>? get evolvesFromSpecies {
    if (_value.evolvesFromSpecies == null) {
      return null;
    }

    return $NamedAPIResourceCopyWith<$Res>(_value.evolvesFromSpecies!, (value) {
      return _then(_value.copyWith(evolvesFromSpecies: value) as $Val);
    });
  }

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $APIResourceCopyWith<$Res> get evolutionChain {
    return $APIResourceCopyWith<$Res>(_value.evolutionChain, (value) {
      return _then(_value.copyWith(evolutionChain: value) as $Val);
    });
  }

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get habitat {
    return $NamedAPIResourceCopyWith<$Res>(_value.habitat, (value) {
      return _then(_value.copyWith(habitat: value) as $Val);
    });
  }

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get generation {
    return $NamedAPIResourceCopyWith<$Res>(_value.generation, (value) {
      return _then(_value.copyWith(generation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpecieModelImplCopyWith<$Res>
    implements $PokemonSpecieModelCopyWith<$Res> {
  factory _$$PokemonSpecieModelImplCopyWith(_$PokemonSpecieModelImpl value,
          $Res Function(_$PokemonSpecieModelImpl) then) =
      __$$PokemonSpecieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int order,
      @JsonKey(name: 'gender_rate') int genderRate,
      @JsonKey(name: 'capture_rate') int captureRate,
      @JsonKey(name: 'base_happiness') int baseHappiness,
      @JsonKey(name: 'is_baby') bool isBaby,
      @JsonKey(name: 'is_legendary') bool isLegendary,
      @JsonKey(name: 'is_mythical') bool isMythical,
      @JsonKey(name: 'hatch_counter') int hatchCounter,
      @JsonKey(name: 'has_gender_differences') bool hasGenderDifferences,
      @JsonKey(name: 'forms_switchable') bool formsSwitchable,
      @JsonKey(name: 'growth_rate') NamedAPIResource growthRate,
      @JsonKey(name: 'pokedex_numbers')
      List<PokemonSpeciesDexEntry> pokedexNumbers,
      @JsonKey(name: 'egg_groups') List<NamedAPIResource> eggGroups,
      NamedAPIResource color,
      NamedAPIResource shape,
      @JsonKey(name: 'evolves_from_species')
      NamedAPIResource? evolvesFromSpecies,
      @JsonKey(name: 'evolution_chain') APIResource evolutionChain,
      NamedAPIResource habitat,
      NamedAPIResource generation,
      List<Name> names,
      @JsonKey(name: 'pal_park_encounters')
      List<PalParkEncounterArea> palParkEncounters,
      @JsonKey(name: 'flavor_text_entries') List<FlavorText> flavorTextEntries,
      @JsonKey(name: 'form_descriptions') List<Description> formDescriptions,
      List<Genus> genera,
      List<PokemonSpeciesVariety> varieties});

  @override
  $NamedAPIResourceCopyWith<$Res> get growthRate;
  @override
  $NamedAPIResourceCopyWith<$Res> get color;
  @override
  $NamedAPIResourceCopyWith<$Res> get shape;
  @override
  $NamedAPIResourceCopyWith<$Res>? get evolvesFromSpecies;
  @override
  $APIResourceCopyWith<$Res> get evolutionChain;
  @override
  $NamedAPIResourceCopyWith<$Res> get habitat;
  @override
  $NamedAPIResourceCopyWith<$Res> get generation;
}

/// @nodoc
class __$$PokemonSpecieModelImplCopyWithImpl<$Res>
    extends _$PokemonSpecieModelCopyWithImpl<$Res, _$PokemonSpecieModelImpl>
    implements _$$PokemonSpecieModelImplCopyWith<$Res> {
  __$$PokemonSpecieModelImplCopyWithImpl(_$PokemonSpecieModelImpl _value,
      $Res Function(_$PokemonSpecieModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? genderRate = null,
    Object? captureRate = null,
    Object? baseHappiness = null,
    Object? isBaby = null,
    Object? isLegendary = null,
    Object? isMythical = null,
    Object? hatchCounter = null,
    Object? hasGenderDifferences = null,
    Object? formsSwitchable = null,
    Object? growthRate = null,
    Object? pokedexNumbers = null,
    Object? eggGroups = null,
    Object? color = null,
    Object? shape = null,
    Object? evolvesFromSpecies = freezed,
    Object? evolutionChain = null,
    Object? habitat = null,
    Object? generation = null,
    Object? names = null,
    Object? palParkEncounters = null,
    Object? flavorTextEntries = null,
    Object? formDescriptions = null,
    Object? genera = null,
    Object? varieties = null,
  }) {
    return _then(_$PokemonSpecieModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      genderRate: null == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      captureRate: null == captureRate
          ? _value.captureRate
          : captureRate // ignore: cast_nullable_to_non_nullable
              as int,
      baseHappiness: null == baseHappiness
          ? _value.baseHappiness
          : baseHappiness // ignore: cast_nullable_to_non_nullable
              as int,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      isLegendary: null == isLegendary
          ? _value.isLegendary
          : isLegendary // ignore: cast_nullable_to_non_nullable
              as bool,
      isMythical: null == isMythical
          ? _value.isMythical
          : isMythical // ignore: cast_nullable_to_non_nullable
              as bool,
      hatchCounter: null == hatchCounter
          ? _value.hatchCounter
          : hatchCounter // ignore: cast_nullable_to_non_nullable
              as int,
      hasGenderDifferences: null == hasGenderDifferences
          ? _value.hasGenderDifferences
          : hasGenderDifferences // ignore: cast_nullable_to_non_nullable
              as bool,
      formsSwitchable: null == formsSwitchable
          ? _value.formsSwitchable
          : formsSwitchable // ignore: cast_nullable_to_non_nullable
              as bool,
      growthRate: null == growthRate
          ? _value.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      pokedexNumbers: null == pokedexNumbers
          ? _value._pokedexNumbers
          : pokedexNumbers // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesDexEntry>,
      eggGroups: null == eggGroups
          ? _value._eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      evolvesFromSpecies: freezed == evolvesFromSpecies
          ? _value.evolvesFromSpecies
          : evolvesFromSpecies // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource?,
      evolutionChain: null == evolutionChain
          ? _value.evolutionChain
          : evolutionChain // ignore: cast_nullable_to_non_nullable
              as APIResource,
      habitat: null == habitat
          ? _value.habitat
          : habitat // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      palParkEncounters: null == palParkEncounters
          ? _value._palParkEncounters
          : palParkEncounters // ignore: cast_nullable_to_non_nullable
              as List<PalParkEncounterArea>,
      flavorTextEntries: null == flavorTextEntries
          ? _value._flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorText>,
      formDescriptions: null == formDescriptions
          ? _value._formDescriptions
          : formDescriptions // ignore: cast_nullable_to_non_nullable
              as List<Description>,
      genera: null == genera
          ? _value._genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<Genus>,
      varieties: null == varieties
          ? _value._varieties
          : varieties // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpeciesVariety>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpecieModelImpl extends _PokemonSpecieModel {
  const _$PokemonSpecieModelImpl(
      {required this.id,
      required this.name,
      required this.order,
      @JsonKey(name: 'gender_rate') required this.genderRate,
      @JsonKey(name: 'capture_rate') required this.captureRate,
      @JsonKey(name: 'base_happiness') required this.baseHappiness,
      @JsonKey(name: 'is_baby') required this.isBaby,
      @JsonKey(name: 'is_legendary') required this.isLegendary,
      @JsonKey(name: 'is_mythical') required this.isMythical,
      @JsonKey(name: 'hatch_counter') required this.hatchCounter,
      @JsonKey(name: 'has_gender_differences')
      required this.hasGenderDifferences,
      @JsonKey(name: 'forms_switchable') required this.formsSwitchable,
      @JsonKey(name: 'growth_rate') required this.growthRate,
      @JsonKey(name: 'pokedex_numbers')
      required final List<PokemonSpeciesDexEntry> pokedexNumbers,
      @JsonKey(name: 'egg_groups')
      required final List<NamedAPIResource> eggGroups,
      required this.color,
      required this.shape,
      @JsonKey(name: 'evolves_from_species') this.evolvesFromSpecies,
      @JsonKey(name: 'evolution_chain') required this.evolutionChain,
      required this.habitat,
      required this.generation,
      required final List<Name> names,
      @JsonKey(name: 'pal_park_encounters')
      required final List<PalParkEncounterArea> palParkEncounters,
      @JsonKey(name: 'flavor_text_entries')
      required final List<FlavorText> flavorTextEntries,
      @JsonKey(name: 'form_descriptions')
      required final List<Description> formDescriptions,
      required final List<Genus> genera,
      required final List<PokemonSpeciesVariety> varieties})
      : _pokedexNumbers = pokedexNumbers,
        _eggGroups = eggGroups,
        _names = names,
        _palParkEncounters = palParkEncounters,
        _flavorTextEntries = flavorTextEntries,
        _formDescriptions = formDescriptions,
        _genera = genera,
        _varieties = varieties,
        super._();

  factory _$PokemonSpecieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpecieModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int order;
  @override
  @JsonKey(name: 'gender_rate')
  final int genderRate;
  @override
  @JsonKey(name: 'capture_rate')
  final int captureRate;
  @override
  @JsonKey(name: 'base_happiness')
  final int baseHappiness;
  @override
  @JsonKey(name: 'is_baby')
  final bool isBaby;
  @override
  @JsonKey(name: 'is_legendary')
  final bool isLegendary;
  @override
  @JsonKey(name: 'is_mythical')
  final bool isMythical;
  @override
  @JsonKey(name: 'hatch_counter')
  final int hatchCounter;
  @override
  @JsonKey(name: 'has_gender_differences')
  final bool hasGenderDifferences;
  @override
  @JsonKey(name: 'forms_switchable')
  final bool formsSwitchable;
  @override
  @JsonKey(name: 'growth_rate')
  final NamedAPIResource growthRate;
  final List<PokemonSpeciesDexEntry> _pokedexNumbers;
  @override
  @JsonKey(name: 'pokedex_numbers')
  List<PokemonSpeciesDexEntry> get pokedexNumbers {
    if (_pokedexNumbers is EqualUnmodifiableListView) return _pokedexNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokedexNumbers);
  }

  final List<NamedAPIResource> _eggGroups;
  @override
  @JsonKey(name: 'egg_groups')
  List<NamedAPIResource> get eggGroups {
    if (_eggGroups is EqualUnmodifiableListView) return _eggGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eggGroups);
  }

  @override
  final NamedAPIResource color;
  @override
  final NamedAPIResource shape;
  @override
  @JsonKey(name: 'evolves_from_species')
  final NamedAPIResource? evolvesFromSpecies;
  @override
  @JsonKey(name: 'evolution_chain')
  final APIResource evolutionChain;
  @override
  final NamedAPIResource habitat;
  @override
  final NamedAPIResource generation;
  final List<Name> _names;
  @override
  List<Name> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  final List<PalParkEncounterArea> _palParkEncounters;
  @override
  @JsonKey(name: 'pal_park_encounters')
  List<PalParkEncounterArea> get palParkEncounters {
    if (_palParkEncounters is EqualUnmodifiableListView)
      return _palParkEncounters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_palParkEncounters);
  }

  final List<FlavorText> _flavorTextEntries;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorText> get flavorTextEntries {
    if (_flavorTextEntries is EqualUnmodifiableListView)
      return _flavorTextEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flavorTextEntries);
  }

  final List<Description> _formDescriptions;
  @override
  @JsonKey(name: 'form_descriptions')
  List<Description> get formDescriptions {
    if (_formDescriptions is EqualUnmodifiableListView)
      return _formDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formDescriptions);
  }

  final List<Genus> _genera;
  @override
  List<Genus> get genera {
    if (_genera is EqualUnmodifiableListView) return _genera;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genera);
  }

  final List<PokemonSpeciesVariety> _varieties;
  @override
  List<PokemonSpeciesVariety> get varieties {
    if (_varieties is EqualUnmodifiableListView) return _varieties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_varieties);
  }

  @override
  String toString() {
    return 'PokemonSpecieModel(id: $id, name: $name, order: $order, genderRate: $genderRate, captureRate: $captureRate, baseHappiness: $baseHappiness, isBaby: $isBaby, isLegendary: $isLegendary, isMythical: $isMythical, hatchCounter: $hatchCounter, hasGenderDifferences: $hasGenderDifferences, formsSwitchable: $formsSwitchable, growthRate: $growthRate, pokedexNumbers: $pokedexNumbers, eggGroups: $eggGroups, color: $color, shape: $shape, evolvesFromSpecies: $evolvesFromSpecies, evolutionChain: $evolutionChain, habitat: $habitat, generation: $generation, names: $names, palParkEncounters: $palParkEncounters, flavorTextEntries: $flavorTextEntries, formDescriptions: $formDescriptions, genera: $genera, varieties: $varieties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpecieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            (identical(other.captureRate, captureRate) ||
                other.captureRate == captureRate) &&
            (identical(other.baseHappiness, baseHappiness) ||
                other.baseHappiness == baseHappiness) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.isLegendary, isLegendary) ||
                other.isLegendary == isLegendary) &&
            (identical(other.isMythical, isMythical) ||
                other.isMythical == isMythical) &&
            (identical(other.hatchCounter, hatchCounter) ||
                other.hatchCounter == hatchCounter) &&
            (identical(other.hasGenderDifferences, hasGenderDifferences) ||
                other.hasGenderDifferences == hasGenderDifferences) &&
            (identical(other.formsSwitchable, formsSwitchable) ||
                other.formsSwitchable == formsSwitchable) &&
            (identical(other.growthRate, growthRate) ||
                other.growthRate == growthRate) &&
            const DeepCollectionEquality()
                .equals(other._pokedexNumbers, _pokedexNumbers) &&
            const DeepCollectionEquality()
                .equals(other._eggGroups, _eggGroups) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.evolvesFromSpecies, evolvesFromSpecies) ||
                other.evolvesFromSpecies == evolvesFromSpecies) &&
            (identical(other.evolutionChain, evolutionChain) ||
                other.evolutionChain == evolutionChain) &&
            (identical(other.habitat, habitat) || other.habitat == habitat) &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            const DeepCollectionEquality()
                .equals(other._palParkEncounters, _palParkEncounters) &&
            const DeepCollectionEquality()
                .equals(other._flavorTextEntries, _flavorTextEntries) &&
            const DeepCollectionEquality()
                .equals(other._formDescriptions, _formDescriptions) &&
            const DeepCollectionEquality().equals(other._genera, _genera) &&
            const DeepCollectionEquality()
                .equals(other._varieties, _varieties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        order,
        genderRate,
        captureRate,
        baseHappiness,
        isBaby,
        isLegendary,
        isMythical,
        hatchCounter,
        hasGenderDifferences,
        formsSwitchable,
        growthRate,
        const DeepCollectionEquality().hash(_pokedexNumbers),
        const DeepCollectionEquality().hash(_eggGroups),
        color,
        shape,
        evolvesFromSpecies,
        evolutionChain,
        habitat,
        generation,
        const DeepCollectionEquality().hash(_names),
        const DeepCollectionEquality().hash(_palParkEncounters),
        const DeepCollectionEquality().hash(_flavorTextEntries),
        const DeepCollectionEquality().hash(_formDescriptions),
        const DeepCollectionEquality().hash(_genera),
        const DeepCollectionEquality().hash(_varieties)
      ]);

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpecieModelImplCopyWith<_$PokemonSpecieModelImpl> get copyWith =>
      __$$PokemonSpecieModelImplCopyWithImpl<_$PokemonSpecieModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpecieModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpecieModel extends PokemonSpecieModel {
  const factory _PokemonSpecieModel(
      {required final int id,
      required final String name,
      required final int order,
      @JsonKey(name: 'gender_rate') required final int genderRate,
      @JsonKey(name: 'capture_rate') required final int captureRate,
      @JsonKey(name: 'base_happiness') required final int baseHappiness,
      @JsonKey(name: 'is_baby') required final bool isBaby,
      @JsonKey(name: 'is_legendary') required final bool isLegendary,
      @JsonKey(name: 'is_mythical') required final bool isMythical,
      @JsonKey(name: 'hatch_counter') required final int hatchCounter,
      @JsonKey(name: 'has_gender_differences')
      required final bool hasGenderDifferences,
      @JsonKey(name: 'forms_switchable') required final bool formsSwitchable,
      @JsonKey(name: 'growth_rate') required final NamedAPIResource growthRate,
      @JsonKey(name: 'pokedex_numbers')
      required final List<PokemonSpeciesDexEntry> pokedexNumbers,
      @JsonKey(name: 'egg_groups')
      required final List<NamedAPIResource> eggGroups,
      required final NamedAPIResource color,
      required final NamedAPIResource shape,
      @JsonKey(name: 'evolves_from_species')
      final NamedAPIResource? evolvesFromSpecies,
      @JsonKey(name: 'evolution_chain')
      required final APIResource evolutionChain,
      required final NamedAPIResource habitat,
      required final NamedAPIResource generation,
      required final List<Name> names,
      @JsonKey(name: 'pal_park_encounters')
      required final List<PalParkEncounterArea> palParkEncounters,
      @JsonKey(name: 'flavor_text_entries')
      required final List<FlavorText> flavorTextEntries,
      @JsonKey(name: 'form_descriptions')
      required final List<Description> formDescriptions,
      required final List<Genus> genera,
      required final List<PokemonSpeciesVariety>
          varieties}) = _$PokemonSpecieModelImpl;
  const _PokemonSpecieModel._() : super._();

  factory _PokemonSpecieModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpecieModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get order;
  @override
  @JsonKey(name: 'gender_rate')
  int get genderRate;
  @override
  @JsonKey(name: 'capture_rate')
  int get captureRate;
  @override
  @JsonKey(name: 'base_happiness')
  int get baseHappiness;
  @override
  @JsonKey(name: 'is_baby')
  bool get isBaby;
  @override
  @JsonKey(name: 'is_legendary')
  bool get isLegendary;
  @override
  @JsonKey(name: 'is_mythical')
  bool get isMythical;
  @override
  @JsonKey(name: 'hatch_counter')
  int get hatchCounter;
  @override
  @JsonKey(name: 'has_gender_differences')
  bool get hasGenderDifferences;
  @override
  @JsonKey(name: 'forms_switchable')
  bool get formsSwitchable;
  @override
  @JsonKey(name: 'growth_rate')
  NamedAPIResource get growthRate;
  @override
  @JsonKey(name: 'pokedex_numbers')
  List<PokemonSpeciesDexEntry> get pokedexNumbers;
  @override
  @JsonKey(name: 'egg_groups')
  List<NamedAPIResource> get eggGroups;
  @override
  NamedAPIResource get color;
  @override
  NamedAPIResource get shape;
  @override
  @JsonKey(name: 'evolves_from_species')
  NamedAPIResource? get evolvesFromSpecies;
  @override
  @JsonKey(name: 'evolution_chain')
  APIResource get evolutionChain;
  @override
  NamedAPIResource get habitat;
  @override
  NamedAPIResource get generation;
  @override
  List<Name> get names;
  @override
  @JsonKey(name: 'pal_park_encounters')
  List<PalParkEncounterArea> get palParkEncounters;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorText> get flavorTextEntries;
  @override
  @JsonKey(name: 'form_descriptions')
  List<Description> get formDescriptions;
  @override
  List<Genus> get genera;
  @override
  List<PokemonSpeciesVariety> get varieties;

  /// Create a copy of PokemonSpecieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpecieModelImplCopyWith<_$PokemonSpecieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpeciesDexEntry _$PokemonSpeciesDexEntryFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpeciesDexEntry.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesDexEntry {
  @JsonKey(name: 'entry_number')
  int get entryNumber => throw _privateConstructorUsedError;
  NamedAPIResource get pokedex => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpeciesDexEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpeciesDexEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpeciesDexEntryCopyWith<PokemonSpeciesDexEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesDexEntryCopyWith<$Res> {
  factory $PokemonSpeciesDexEntryCopyWith(PokemonSpeciesDexEntry value,
          $Res Function(PokemonSpeciesDexEntry) then) =
      _$PokemonSpeciesDexEntryCopyWithImpl<$Res, PokemonSpeciesDexEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'entry_number') int entryNumber,
      NamedAPIResource pokedex});

  $NamedAPIResourceCopyWith<$Res> get pokedex;
}

/// @nodoc
class _$PokemonSpeciesDexEntryCopyWithImpl<$Res,
        $Val extends PokemonSpeciesDexEntry>
    implements $PokemonSpeciesDexEntryCopyWith<$Res> {
  _$PokemonSpeciesDexEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpeciesDexEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryNumber = null,
    Object? pokedex = null,
  }) {
    return _then(_value.copyWith(
      entryNumber: null == entryNumber
          ? _value.entryNumber
          : entryNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pokedex: null == pokedex
          ? _value.pokedex
          : pokedex // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ) as $Val);
  }

  /// Create a copy of PokemonSpeciesDexEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get pokedex {
    return $NamedAPIResourceCopyWith<$Res>(_value.pokedex, (value) {
      return _then(_value.copyWith(pokedex: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesDexEntryImplCopyWith<$Res>
    implements $PokemonSpeciesDexEntryCopyWith<$Res> {
  factory _$$PokemonSpeciesDexEntryImplCopyWith(
          _$PokemonSpeciesDexEntryImpl value,
          $Res Function(_$PokemonSpeciesDexEntryImpl) then) =
      __$$PokemonSpeciesDexEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entry_number') int entryNumber,
      NamedAPIResource pokedex});

  @override
  $NamedAPIResourceCopyWith<$Res> get pokedex;
}

/// @nodoc
class __$$PokemonSpeciesDexEntryImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesDexEntryCopyWithImpl<$Res,
        _$PokemonSpeciesDexEntryImpl>
    implements _$$PokemonSpeciesDexEntryImplCopyWith<$Res> {
  __$$PokemonSpeciesDexEntryImplCopyWithImpl(
      _$PokemonSpeciesDexEntryImpl _value,
      $Res Function(_$PokemonSpeciesDexEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpeciesDexEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryNumber = null,
    Object? pokedex = null,
  }) {
    return _then(_$PokemonSpeciesDexEntryImpl(
      entryNumber: null == entryNumber
          ? _value.entryNumber
          : entryNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pokedex: null == pokedex
          ? _value.pokedex
          : pokedex // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesDexEntryImpl implements _PokemonSpeciesDexEntry {
  const _$PokemonSpeciesDexEntryImpl(
      {@JsonKey(name: 'entry_number') required this.entryNumber,
      required this.pokedex});

  factory _$PokemonSpeciesDexEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesDexEntryImplFromJson(json);

  @override
  @JsonKey(name: 'entry_number')
  final int entryNumber;
  @override
  final NamedAPIResource pokedex;

  @override
  String toString() {
    return 'PokemonSpeciesDexEntry(entryNumber: $entryNumber, pokedex: $pokedex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesDexEntryImpl &&
            (identical(other.entryNumber, entryNumber) ||
                other.entryNumber == entryNumber) &&
            (identical(other.pokedex, pokedex) || other.pokedex == pokedex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entryNumber, pokedex);

  /// Create a copy of PokemonSpeciesDexEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesDexEntryImplCopyWith<_$PokemonSpeciesDexEntryImpl>
      get copyWith => __$$PokemonSpeciesDexEntryImplCopyWithImpl<
          _$PokemonSpeciesDexEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesDexEntryImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesDexEntry implements PokemonSpeciesDexEntry {
  const factory _PokemonSpeciesDexEntry(
      {@JsonKey(name: 'entry_number') required final int entryNumber,
      required final NamedAPIResource pokedex}) = _$PokemonSpeciesDexEntryImpl;

  factory _PokemonSpeciesDexEntry.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesDexEntryImpl.fromJson;

  @override
  @JsonKey(name: 'entry_number')
  int get entryNumber;
  @override
  NamedAPIResource get pokedex;

  /// Create a copy of PokemonSpeciesDexEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpeciesDexEntryImplCopyWith<_$PokemonSpeciesDexEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PalParkEncounterArea _$PalParkEncounterAreaFromJson(Map<String, dynamic> json) {
  return _PalParkEncounterArea.fromJson(json);
}

/// @nodoc
mixin _$PalParkEncounterArea {
  @JsonKey(name: 'base_score')
  int get baseScore => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  NamedAPIResource get area => throw _privateConstructorUsedError;

  /// Serializes this PalParkEncounterArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PalParkEncounterArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PalParkEncounterAreaCopyWith<PalParkEncounterArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PalParkEncounterAreaCopyWith<$Res> {
  factory $PalParkEncounterAreaCopyWith(PalParkEncounterArea value,
          $Res Function(PalParkEncounterArea) then) =
      _$PalParkEncounterAreaCopyWithImpl<$Res, PalParkEncounterArea>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_score') int baseScore,
      int rate,
      NamedAPIResource area});

  $NamedAPIResourceCopyWith<$Res> get area;
}

/// @nodoc
class _$PalParkEncounterAreaCopyWithImpl<$Res,
        $Val extends PalParkEncounterArea>
    implements $PalParkEncounterAreaCopyWith<$Res> {
  _$PalParkEncounterAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PalParkEncounterArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseScore = null,
    Object? rate = null,
    Object? area = null,
  }) {
    return _then(_value.copyWith(
      baseScore: null == baseScore
          ? _value.baseScore
          : baseScore // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ) as $Val);
  }

  /// Create a copy of PalParkEncounterArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get area {
    return $NamedAPIResourceCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PalParkEncounterAreaImplCopyWith<$Res>
    implements $PalParkEncounterAreaCopyWith<$Res> {
  factory _$$PalParkEncounterAreaImplCopyWith(_$PalParkEncounterAreaImpl value,
          $Res Function(_$PalParkEncounterAreaImpl) then) =
      __$$PalParkEncounterAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_score') int baseScore,
      int rate,
      NamedAPIResource area});

  @override
  $NamedAPIResourceCopyWith<$Res> get area;
}

/// @nodoc
class __$$PalParkEncounterAreaImplCopyWithImpl<$Res>
    extends _$PalParkEncounterAreaCopyWithImpl<$Res, _$PalParkEncounterAreaImpl>
    implements _$$PalParkEncounterAreaImplCopyWith<$Res> {
  __$$PalParkEncounterAreaImplCopyWithImpl(_$PalParkEncounterAreaImpl _value,
      $Res Function(_$PalParkEncounterAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of PalParkEncounterArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseScore = null,
    Object? rate = null,
    Object? area = null,
  }) {
    return _then(_$PalParkEncounterAreaImpl(
      baseScore: null == baseScore
          ? _value.baseScore
          : baseScore // ignore: cast_nullable_to_non_nullable
              as int,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PalParkEncounterAreaImpl implements _PalParkEncounterArea {
  const _$PalParkEncounterAreaImpl(
      {@JsonKey(name: 'base_score') required this.baseScore,
      required this.rate,
      required this.area});

  factory _$PalParkEncounterAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PalParkEncounterAreaImplFromJson(json);

  @override
  @JsonKey(name: 'base_score')
  final int baseScore;
  @override
  final int rate;
  @override
  final NamedAPIResource area;

  @override
  String toString() {
    return 'PalParkEncounterArea(baseScore: $baseScore, rate: $rate, area: $area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PalParkEncounterAreaImpl &&
            (identical(other.baseScore, baseScore) ||
                other.baseScore == baseScore) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.area, area) || other.area == area));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseScore, rate, area);

  /// Create a copy of PalParkEncounterArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PalParkEncounterAreaImplCopyWith<_$PalParkEncounterAreaImpl>
      get copyWith =>
          __$$PalParkEncounterAreaImplCopyWithImpl<_$PalParkEncounterAreaImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PalParkEncounterAreaImplToJson(
      this,
    );
  }
}

abstract class _PalParkEncounterArea implements PalParkEncounterArea {
  const factory _PalParkEncounterArea(
      {@JsonKey(name: 'base_score') required final int baseScore,
      required final int rate,
      required final NamedAPIResource area}) = _$PalParkEncounterAreaImpl;

  factory _PalParkEncounterArea.fromJson(Map<String, dynamic> json) =
      _$PalParkEncounterAreaImpl.fromJson;

  @override
  @JsonKey(name: 'base_score')
  int get baseScore;
  @override
  int get rate;
  @override
  NamedAPIResource get area;

  /// Create a copy of PalParkEncounterArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PalParkEncounterAreaImplCopyWith<_$PalParkEncounterAreaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FlavorText _$FlavorTextFromJson(Map<String, dynamic> json) {
  return _FlavorText.fromJson(json);
}

/// @nodoc
mixin _$FlavorText {
  @JsonKey(name: 'flavor_text')
  String get flavorText => throw _privateConstructorUsedError;
  NamedAPIResource get language => throw _privateConstructorUsedError;
  NamedAPIResource get version => throw _privateConstructorUsedError;

  /// Serializes this FlavorText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlavorText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlavorTextCopyWith<FlavorText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTextCopyWith<$Res> {
  factory $FlavorTextCopyWith(
          FlavorText value, $Res Function(FlavorText) then) =
      _$FlavorTextCopyWithImpl<$Res, FlavorText>;
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      NamedAPIResource language,
      NamedAPIResource version});

  $NamedAPIResourceCopyWith<$Res> get language;
  $NamedAPIResourceCopyWith<$Res> get version;
}

/// @nodoc
class _$FlavorTextCopyWithImpl<$Res, $Val extends FlavorText>
    implements $FlavorTextCopyWith<$Res> {
  _$FlavorTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlavorText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ) as $Val);
  }

  /// Create a copy of FlavorText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get language {
    return $NamedAPIResourceCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }

  /// Create a copy of FlavorText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get version {
    return $NamedAPIResourceCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlavorTextImplCopyWith<$Res>
    implements $FlavorTextCopyWith<$Res> {
  factory _$$FlavorTextImplCopyWith(
          _$FlavorTextImpl value, $Res Function(_$FlavorTextImpl) then) =
      __$$FlavorTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      NamedAPIResource language,
      NamedAPIResource version});

  @override
  $NamedAPIResourceCopyWith<$Res> get language;
  @override
  $NamedAPIResourceCopyWith<$Res> get version;
}

/// @nodoc
class __$$FlavorTextImplCopyWithImpl<$Res>
    extends _$FlavorTextCopyWithImpl<$Res, _$FlavorTextImpl>
    implements _$$FlavorTextImplCopyWith<$Res> {
  __$$FlavorTextImplCopyWithImpl(
      _$FlavorTextImpl _value, $Res Function(_$FlavorTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlavorText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
    Object? version = null,
  }) {
    return _then(_$FlavorTextImpl(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorTextImpl implements _FlavorText {
  const _$FlavorTextImpl(
      {@JsonKey(name: 'flavor_text') required this.flavorText,
      required this.language,
      required this.version});

  factory _$FlavorTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorTextImplFromJson(json);

  @override
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  @override
  final NamedAPIResource language;
  @override
  final NamedAPIResource version;

  @override
  String toString() {
    return 'FlavorText(flavorText: $flavorText, language: $language, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorTextImpl &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language, version);

  /// Create a copy of FlavorText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorTextImplCopyWith<_$FlavorTextImpl> get copyWith =>
      __$$FlavorTextImplCopyWithImpl<_$FlavorTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorTextImplToJson(
      this,
    );
  }
}

abstract class _FlavorText implements FlavorText {
  const factory _FlavorText(
      {@JsonKey(name: 'flavor_text') required final String flavorText,
      required final NamedAPIResource language,
      required final NamedAPIResource version}) = _$FlavorTextImpl;

  factory _FlavorText.fromJson(Map<String, dynamic> json) =
      _$FlavorTextImpl.fromJson;

  @override
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  @override
  NamedAPIResource get language;
  @override
  NamedAPIResource get version;

  /// Create a copy of FlavorText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlavorTextImplCopyWith<_$FlavorTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Genus _$GenusFromJson(Map<String, dynamic> json) {
  return _Genus.fromJson(json);
}

/// @nodoc
mixin _$Genus {
  String get genus => throw _privateConstructorUsedError;
  NamedAPIResource get language => throw _privateConstructorUsedError;

  /// Serializes this Genus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Genus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenusCopyWith<Genus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenusCopyWith<$Res> {
  factory $GenusCopyWith(Genus value, $Res Function(Genus) then) =
      _$GenusCopyWithImpl<$Res, Genus>;
  @useResult
  $Res call({String genus, NamedAPIResource language});

  $NamedAPIResourceCopyWith<$Res> get language;
}

/// @nodoc
class _$GenusCopyWithImpl<$Res, $Val extends Genus>
    implements $GenusCopyWith<$Res> {
  _$GenusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Genus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ) as $Val);
  }

  /// Create a copy of Genus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get language {
    return $NamedAPIResourceCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenusImplCopyWith<$Res> implements $GenusCopyWith<$Res> {
  factory _$$GenusImplCopyWith(
          _$GenusImpl value, $Res Function(_$GenusImpl) then) =
      __$$GenusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String genus, NamedAPIResource language});

  @override
  $NamedAPIResourceCopyWith<$Res> get language;
}

/// @nodoc
class __$$GenusImplCopyWithImpl<$Res>
    extends _$GenusCopyWithImpl<$Res, _$GenusImpl>
    implements _$$GenusImplCopyWith<$Res> {
  __$$GenusImplCopyWithImpl(
      _$GenusImpl _value, $Res Function(_$GenusImpl) _then)
      : super(_value, _then);

  /// Create a copy of Genus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_$GenusImpl(
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenusImpl implements _Genus {
  const _$GenusImpl({required this.genus, required this.language});

  factory _$GenusImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenusImplFromJson(json);

  @override
  final String genus;
  @override
  final NamedAPIResource language;

  @override
  String toString() {
    return 'Genus(genus: $genus, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenusImpl &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, genus, language);

  /// Create a copy of Genus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenusImplCopyWith<_$GenusImpl> get copyWith =>
      __$$GenusImplCopyWithImpl<_$GenusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenusImplToJson(
      this,
    );
  }
}

abstract class _Genus implements Genus {
  const factory _Genus(
      {required final String genus,
      required final NamedAPIResource language}) = _$GenusImpl;

  factory _Genus.fromJson(Map<String, dynamic> json) = _$GenusImpl.fromJson;

  @override
  String get genus;
  @override
  NamedAPIResource get language;

  /// Create a copy of Genus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenusImplCopyWith<_$GenusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpeciesVariety _$PokemonSpeciesVarietyFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpeciesVariety.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesVariety {
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  NamedAPIResource get pokemon => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpeciesVariety to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpeciesVariety
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpeciesVarietyCopyWith<PokemonSpeciesVariety> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesVarietyCopyWith<$Res> {
  factory $PokemonSpeciesVarietyCopyWith(PokemonSpeciesVariety value,
          $Res Function(PokemonSpeciesVariety) then) =
      _$PokemonSpeciesVarietyCopyWithImpl<$Res, PokemonSpeciesVariety>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_default') bool isDefault, NamedAPIResource pokemon});

  $NamedAPIResourceCopyWith<$Res> get pokemon;
}

/// @nodoc
class _$PokemonSpeciesVarietyCopyWithImpl<$Res,
        $Val extends PokemonSpeciesVariety>
    implements $PokemonSpeciesVarietyCopyWith<$Res> {
  _$PokemonSpeciesVarietyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpeciesVariety
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefault = null,
    Object? pokemon = null,
  }) {
    return _then(_value.copyWith(
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ) as $Val);
  }

  /// Create a copy of PokemonSpeciesVariety
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get pokemon {
    return $NamedAPIResourceCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesVarietyImplCopyWith<$Res>
    implements $PokemonSpeciesVarietyCopyWith<$Res> {
  factory _$$PokemonSpeciesVarietyImplCopyWith(
          _$PokemonSpeciesVarietyImpl value,
          $Res Function(_$PokemonSpeciesVarietyImpl) then) =
      __$$PokemonSpeciesVarietyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_default') bool isDefault, NamedAPIResource pokemon});

  @override
  $NamedAPIResourceCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$PokemonSpeciesVarietyImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesVarietyCopyWithImpl<$Res,
        _$PokemonSpeciesVarietyImpl>
    implements _$$PokemonSpeciesVarietyImplCopyWith<$Res> {
  __$$PokemonSpeciesVarietyImplCopyWithImpl(_$PokemonSpeciesVarietyImpl _value,
      $Res Function(_$PokemonSpeciesVarietyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpeciesVariety
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefault = null,
    Object? pokemon = null,
  }) {
    return _then(_$PokemonSpeciesVarietyImpl(
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesVarietyImpl implements _PokemonSpeciesVariety {
  const _$PokemonSpeciesVarietyImpl(
      {@JsonKey(name: 'is_default') required this.isDefault,
      required this.pokemon});

  factory _$PokemonSpeciesVarietyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesVarietyImplFromJson(json);

  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  final NamedAPIResource pokemon;

  @override
  String toString() {
    return 'PokemonSpeciesVariety(isDefault: $isDefault, pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesVarietyImpl &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isDefault, pokemon);

  /// Create a copy of PokemonSpeciesVariety
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesVarietyImplCopyWith<_$PokemonSpeciesVarietyImpl>
      get copyWith => __$$PokemonSpeciesVarietyImplCopyWithImpl<
          _$PokemonSpeciesVarietyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesVarietyImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesVariety implements PokemonSpeciesVariety {
  const factory _PokemonSpeciesVariety(
      {@JsonKey(name: 'is_default') required final bool isDefault,
      required final NamedAPIResource pokemon}) = _$PokemonSpeciesVarietyImpl;

  factory _PokemonSpeciesVariety.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesVarietyImpl.fromJson;

  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  NamedAPIResource get pokemon;

  /// Create a copy of PokemonSpeciesVariety
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpeciesVarietyImplCopyWith<_$PokemonSpeciesVarietyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
