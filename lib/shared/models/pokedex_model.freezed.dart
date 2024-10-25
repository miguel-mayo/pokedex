// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokedexModel _$PokedexModelFromJson(Map<String, dynamic> json) {
  return _PokedexModel.fromJson(json);
}

/// @nodoc
mixin _$PokedexModel {
  List<Description> get descriptions => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_main_series')
  bool get isMainSeries => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Name> get names => throw _privateConstructorUsedError;
  @JsonKey(name: 'pokemon_entries')
  List<PokemonEntry> get pokemonEntries => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_groups')
  List<VersionGroup> get versionGroups => throw _privateConstructorUsedError;

  /// Serializes this PokedexModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokedexModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokedexModelCopyWith<PokedexModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexModelCopyWith<$Res> {
  factory $PokedexModelCopyWith(
          PokedexModel value, $Res Function(PokedexModel) then) =
      _$PokedexModelCopyWithImpl<$Res, PokedexModel>;
  @useResult
  $Res call(
      {List<Description> descriptions,
      int id,
      @JsonKey(name: 'is_main_series') bool isMainSeries,
      String name,
      List<Name> names,
      @JsonKey(name: 'pokemon_entries') List<PokemonEntry> pokemonEntries,
      Region region,
      @JsonKey(name: 'version_groups') List<VersionGroup> versionGroups});

  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class _$PokedexModelCopyWithImpl<$Res, $Val extends PokedexModel>
    implements $PokedexModelCopyWith<$Res> {
  _$PokedexModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokedexModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptions = null,
    Object? id = null,
    Object? isMainSeries = null,
    Object? name = null,
    Object? names = null,
    Object? pokemonEntries = null,
    Object? region = null,
    Object? versionGroups = null,
  }) {
    return _then(_value.copyWith(
      descriptions: null == descriptions
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<Description>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isMainSeries: null == isMainSeries
          ? _value.isMainSeries
          : isMainSeries // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      pokemonEntries: null == pokemonEntries
          ? _value.pokemonEntries
          : pokemonEntries // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntry>,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      versionGroups: null == versionGroups
          ? _value.versionGroups
          : versionGroups // ignore: cast_nullable_to_non_nullable
              as List<VersionGroup>,
    ) as $Val);
  }

  /// Create a copy of PokedexModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokedexModelImplCopyWith<$Res>
    implements $PokedexModelCopyWith<$Res> {
  factory _$$PokedexModelImplCopyWith(
          _$PokedexModelImpl value, $Res Function(_$PokedexModelImpl) then) =
      __$$PokedexModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Description> descriptions,
      int id,
      @JsonKey(name: 'is_main_series') bool isMainSeries,
      String name,
      List<Name> names,
      @JsonKey(name: 'pokemon_entries') List<PokemonEntry> pokemonEntries,
      Region region,
      @JsonKey(name: 'version_groups') List<VersionGroup> versionGroups});

  @override
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class __$$PokedexModelImplCopyWithImpl<$Res>
    extends _$PokedexModelCopyWithImpl<$Res, _$PokedexModelImpl>
    implements _$$PokedexModelImplCopyWith<$Res> {
  __$$PokedexModelImplCopyWithImpl(
      _$PokedexModelImpl _value, $Res Function(_$PokedexModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokedexModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptions = null,
    Object? id = null,
    Object? isMainSeries = null,
    Object? name = null,
    Object? names = null,
    Object? pokemonEntries = null,
    Object? region = null,
    Object? versionGroups = null,
  }) {
    return _then(_$PokedexModelImpl(
      descriptions: null == descriptions
          ? _value._descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<Description>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isMainSeries: null == isMainSeries
          ? _value.isMainSeries
          : isMainSeries // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      pokemonEntries: null == pokemonEntries
          ? _value._pokemonEntries
          : pokemonEntries // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntry>,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      versionGroups: null == versionGroups
          ? _value._versionGroups
          : versionGroups // ignore: cast_nullable_to_non_nullable
              as List<VersionGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokedexModelImpl extends _PokedexModel {
  const _$PokedexModelImpl(
      {required final List<Description> descriptions,
      required this.id,
      @JsonKey(name: 'is_main_series') required this.isMainSeries,
      required this.name,
      required final List<Name> names,
      @JsonKey(name: 'pokemon_entries')
      required final List<PokemonEntry> pokemonEntries,
      required this.region,
      @JsonKey(name: 'version_groups')
      required final List<VersionGroup> versionGroups})
      : _descriptions = descriptions,
        _names = names,
        _pokemonEntries = pokemonEntries,
        _versionGroups = versionGroups,
        super._();

  factory _$PokedexModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexModelImplFromJson(json);

  final List<Description> _descriptions;
  @override
  List<Description> get descriptions {
    if (_descriptions is EqualUnmodifiableListView) return _descriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_descriptions);
  }

  @override
  final int id;
  @override
  @JsonKey(name: 'is_main_series')
  final bool isMainSeries;
  @override
  final String name;
  final List<Name> _names;
  @override
  List<Name> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  final List<PokemonEntry> _pokemonEntries;
  @override
  @JsonKey(name: 'pokemon_entries')
  List<PokemonEntry> get pokemonEntries {
    if (_pokemonEntries is EqualUnmodifiableListView) return _pokemonEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonEntries);
  }

  @override
  final Region region;
  final List<VersionGroup> _versionGroups;
  @override
  @JsonKey(name: 'version_groups')
  List<VersionGroup> get versionGroups {
    if (_versionGroups is EqualUnmodifiableListView) return _versionGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionGroups);
  }

  @override
  String toString() {
    return 'PokedexModel(descriptions: $descriptions, id: $id, isMainSeries: $isMainSeries, name: $name, names: $names, pokemonEntries: $pokemonEntries, region: $region, versionGroups: $versionGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexModelImpl &&
            const DeepCollectionEquality()
                .equals(other._descriptions, _descriptions) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isMainSeries, isMainSeries) ||
                other.isMainSeries == isMainSeries) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            const DeepCollectionEquality()
                .equals(other._pokemonEntries, _pokemonEntries) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality()
                .equals(other._versionGroups, _versionGroups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_descriptions),
      id,
      isMainSeries,
      name,
      const DeepCollectionEquality().hash(_names),
      const DeepCollectionEquality().hash(_pokemonEntries),
      region,
      const DeepCollectionEquality().hash(_versionGroups));

  /// Create a copy of PokedexModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexModelImplCopyWith<_$PokedexModelImpl> get copyWith =>
      __$$PokedexModelImplCopyWithImpl<_$PokedexModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexModelImplToJson(
      this,
    );
  }
}

abstract class _PokedexModel extends PokedexModel {
  const factory _PokedexModel(
      {required final List<Description> descriptions,
      required final int id,
      @JsonKey(name: 'is_main_series') required final bool isMainSeries,
      required final String name,
      required final List<Name> names,
      @JsonKey(name: 'pokemon_entries')
      required final List<PokemonEntry> pokemonEntries,
      required final Region region,
      @JsonKey(name: 'version_groups')
      required final List<VersionGroup> versionGroups}) = _$PokedexModelImpl;
  const _PokedexModel._() : super._();

  factory _PokedexModel.fromJson(Map<String, dynamic> json) =
      _$PokedexModelImpl.fromJson;

  @override
  List<Description> get descriptions;
  @override
  int get id;
  @override
  @JsonKey(name: 'is_main_series')
  bool get isMainSeries;
  @override
  String get name;
  @override
  List<Name> get names;
  @override
  @JsonKey(name: 'pokemon_entries')
  List<PokemonEntry> get pokemonEntries;
  @override
  Region get region;
  @override
  @JsonKey(name: 'version_groups')
  List<VersionGroup> get versionGroups;

  /// Create a copy of PokedexModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokedexModelImplCopyWith<_$PokedexModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonEntry _$PokemonEntryFromJson(Map<String, dynamic> json) {
  return _PokemonEntry.fromJson(json);
}

/// @nodoc
mixin _$PokemonEntry {
  @JsonKey(name: 'entry_number')
  int get entryNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'pokemon_species')
  PokemonSpecies get pokemonSpecies => throw _privateConstructorUsedError;

  /// Serializes this PokemonEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonEntryCopyWith<PokemonEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEntryCopyWith<$Res> {
  factory $PokemonEntryCopyWith(
          PokemonEntry value, $Res Function(PokemonEntry) then) =
      _$PokemonEntryCopyWithImpl<$Res, PokemonEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'entry_number') int entryNumber,
      @JsonKey(name: 'pokemon_species') PokemonSpecies pokemonSpecies});

  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies;
}

/// @nodoc
class _$PokemonEntryCopyWithImpl<$Res, $Val extends PokemonEntry>
    implements $PokemonEntryCopyWith<$Res> {
  _$PokemonEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryNumber = null,
    Object? pokemonSpecies = null,
  }) {
    return _then(_value.copyWith(
      entryNumber: null == entryNumber
          ? _value.entryNumber
          : entryNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pokemonSpecies: null == pokemonSpecies
          ? _value.pokemonSpecies
          : pokemonSpecies // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
    ) as $Val);
  }

  /// Create a copy of PokemonEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies {
    return $PokemonSpeciesCopyWith<$Res>(_value.pokemonSpecies, (value) {
      return _then(_value.copyWith(pokemonSpecies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonEntryImplCopyWith<$Res>
    implements $PokemonEntryCopyWith<$Res> {
  factory _$$PokemonEntryImplCopyWith(
          _$PokemonEntryImpl value, $Res Function(_$PokemonEntryImpl) then) =
      __$$PokemonEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entry_number') int entryNumber,
      @JsonKey(name: 'pokemon_species') PokemonSpecies pokemonSpecies});

  @override
  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies;
}

/// @nodoc
class __$$PokemonEntryImplCopyWithImpl<$Res>
    extends _$PokemonEntryCopyWithImpl<$Res, _$PokemonEntryImpl>
    implements _$$PokemonEntryImplCopyWith<$Res> {
  __$$PokemonEntryImplCopyWithImpl(
      _$PokemonEntryImpl _value, $Res Function(_$PokemonEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryNumber = null,
    Object? pokemonSpecies = null,
  }) {
    return _then(_$PokemonEntryImpl(
      entryNumber: null == entryNumber
          ? _value.entryNumber
          : entryNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pokemonSpecies: null == pokemonSpecies
          ? _value.pokemonSpecies
          : pokemonSpecies // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEntryImpl implements _PokemonEntry {
  const _$PokemonEntryImpl(
      {@JsonKey(name: 'entry_number') required this.entryNumber,
      @JsonKey(name: 'pokemon_species') required this.pokemonSpecies});

  factory _$PokemonEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEntryImplFromJson(json);

  @override
  @JsonKey(name: 'entry_number')
  final int entryNumber;
  @override
  @JsonKey(name: 'pokemon_species')
  final PokemonSpecies pokemonSpecies;

  @override
  String toString() {
    return 'PokemonEntry(entryNumber: $entryNumber, pokemonSpecies: $pokemonSpecies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEntryImpl &&
            (identical(other.entryNumber, entryNumber) ||
                other.entryNumber == entryNumber) &&
            (identical(other.pokemonSpecies, pokemonSpecies) ||
                other.pokemonSpecies == pokemonSpecies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entryNumber, pokemonSpecies);

  /// Create a copy of PokemonEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEntryImplCopyWith<_$PokemonEntryImpl> get copyWith =>
      __$$PokemonEntryImplCopyWithImpl<_$PokemonEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEntryImplToJson(
      this,
    );
  }
}

abstract class _PokemonEntry implements PokemonEntry {
  const factory _PokemonEntry(
      {@JsonKey(name: 'entry_number') required final int entryNumber,
      @JsonKey(name: 'pokemon_species')
      required final PokemonSpecies pokemonSpecies}) = _$PokemonEntryImpl;

  factory _PokemonEntry.fromJson(Map<String, dynamic> json) =
      _$PokemonEntryImpl.fromJson;

  @override
  @JsonKey(name: 'entry_number')
  int get entryNumber;
  @override
  @JsonKey(name: 'pokemon_species')
  PokemonSpecies get pokemonSpecies;

  /// Create a copy of PokemonEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonEntryImplCopyWith<_$PokemonEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpecies _$PokemonSpeciesFromJson(Map<String, dynamic> json) {
  return _PokemonSpecies.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpecies {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpecies to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpecies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpeciesCopyWith<PokemonSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesCopyWith<$Res> {
  factory $PokemonSpeciesCopyWith(
          PokemonSpecies value, $Res Function(PokemonSpecies) then) =
      _$PokemonSpeciesCopyWithImpl<$Res, PokemonSpecies>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res, $Val extends PokemonSpecies>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpecies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesImplCopyWith<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  factory _$$PokemonSpeciesImplCopyWith(_$PokemonSpeciesImpl value,
          $Res Function(_$PokemonSpeciesImpl) then) =
      __$$PokemonSpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonSpeciesImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesCopyWithImpl<$Res, _$PokemonSpeciesImpl>
    implements _$$PokemonSpeciesImplCopyWith<$Res> {
  __$$PokemonSpeciesImplCopyWithImpl(
      _$PokemonSpeciesImpl _value, $Res Function(_$PokemonSpeciesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpecies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonSpeciesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesImpl implements _PokemonSpecies {
  const _$PokemonSpeciesImpl({required this.name, required this.url});

  factory _$PokemonSpeciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonSpecies(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonSpecies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      __$$PokemonSpeciesImplCopyWithImpl<_$PokemonSpeciesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpecies implements PokemonSpecies {
  const factory _PokemonSpecies(
      {required final String name,
      required final String url}) = _$PokemonSpeciesImpl;

  factory _PokemonSpecies.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonSpecies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Region to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$RegionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  const _$RegionImpl({required this.name, required this.url});

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Region(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region(
      {required final String name, required final String url}) = _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionGroup _$VersionGroupFromJson(Map<String, dynamic> json) {
  return _VersionGroup.fromJson(json);
}

/// @nodoc
mixin _$VersionGroup {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this VersionGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VersionGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VersionGroupCopyWith<VersionGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionGroupCopyWith<$Res> {
  factory $VersionGroupCopyWith(
          VersionGroup value, $Res Function(VersionGroup) then) =
      _$VersionGroupCopyWithImpl<$Res, VersionGroup>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$VersionGroupCopyWithImpl<$Res, $Val extends VersionGroup>
    implements $VersionGroupCopyWith<$Res> {
  _$VersionGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VersionGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionGroupImplCopyWith<$Res>
    implements $VersionGroupCopyWith<$Res> {
  factory _$$VersionGroupImplCopyWith(
          _$VersionGroupImpl value, $Res Function(_$VersionGroupImpl) then) =
      __$$VersionGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$VersionGroupImplCopyWithImpl<$Res>
    extends _$VersionGroupCopyWithImpl<$Res, _$VersionGroupImpl>
    implements _$$VersionGroupImplCopyWith<$Res> {
  __$$VersionGroupImplCopyWithImpl(
      _$VersionGroupImpl _value, $Res Function(_$VersionGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of VersionGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$VersionGroupImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionGroupImpl implements _VersionGroup {
  const _$VersionGroupImpl({required this.name, required this.url});

  factory _$VersionGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionGroupImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'VersionGroup(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionGroupImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of VersionGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionGroupImplCopyWith<_$VersionGroupImpl> get copyWith =>
      __$$VersionGroupImplCopyWithImpl<_$VersionGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionGroupImplToJson(
      this,
    );
  }
}

abstract class _VersionGroup implements VersionGroup {
  const factory _VersionGroup(
      {required final String name,
      required final String url}) = _$VersionGroupImpl;

  factory _VersionGroup.fromJson(Map<String, dynamic> json) =
      _$VersionGroupImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of VersionGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VersionGroupImplCopyWith<_$VersionGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
