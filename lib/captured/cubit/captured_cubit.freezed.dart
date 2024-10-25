// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captured_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CapturedState {
  List<PokemonModel> get capturedPokemons => throw _privateConstructorUsedError;
  List<PokemonType> get typesFilter => throw _privateConstructorUsedError;
  String? get mostFrequentType => throw _privateConstructorUsedError;

  /// Create a copy of CapturedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CapturedStateCopyWith<CapturedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapturedStateCopyWith<$Res> {
  factory $CapturedStateCopyWith(
          CapturedState value, $Res Function(CapturedState) then) =
      _$CapturedStateCopyWithImpl<$Res, CapturedState>;
  @useResult
  $Res call(
      {List<PokemonModel> capturedPokemons,
      List<PokemonType> typesFilter,
      String? mostFrequentType});
}

/// @nodoc
class _$CapturedStateCopyWithImpl<$Res, $Val extends CapturedState>
    implements $CapturedStateCopyWith<$Res> {
  _$CapturedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CapturedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capturedPokemons = null,
    Object? typesFilter = null,
    Object? mostFrequentType = freezed,
  }) {
    return _then(_value.copyWith(
      capturedPokemons: null == capturedPokemons
          ? _value.capturedPokemons
          : capturedPokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
      typesFilter: null == typesFilter
          ? _value.typesFilter
          : typesFilter // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      mostFrequentType: freezed == mostFrequentType
          ? _value.mostFrequentType
          : mostFrequentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CapturedStateImplCopyWith<$Res>
    implements $CapturedStateCopyWith<$Res> {
  factory _$$CapturedStateImplCopyWith(
          _$CapturedStateImpl value, $Res Function(_$CapturedStateImpl) then) =
      __$$CapturedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PokemonModel> capturedPokemons,
      List<PokemonType> typesFilter,
      String? mostFrequentType});
}

/// @nodoc
class __$$CapturedStateImplCopyWithImpl<$Res>
    extends _$CapturedStateCopyWithImpl<$Res, _$CapturedStateImpl>
    implements _$$CapturedStateImplCopyWith<$Res> {
  __$$CapturedStateImplCopyWithImpl(
      _$CapturedStateImpl _value, $Res Function(_$CapturedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CapturedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capturedPokemons = null,
    Object? typesFilter = null,
    Object? mostFrequentType = freezed,
  }) {
    return _then(_$CapturedStateImpl(
      capturedPokemons: null == capturedPokemons
          ? _value._capturedPokemons
          : capturedPokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
      typesFilter: null == typesFilter
          ? _value._typesFilter
          : typesFilter // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      mostFrequentType: freezed == mostFrequentType
          ? _value.mostFrequentType
          : mostFrequentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CapturedStateImpl extends _CapturedState {
  const _$CapturedStateImpl(
      {final List<PokemonModel> capturedPokemons = const [],
      final List<PokemonType> typesFilter = const [],
      this.mostFrequentType})
      : _capturedPokemons = capturedPokemons,
        _typesFilter = typesFilter,
        super._();

  final List<PokemonModel> _capturedPokemons;
  @override
  @JsonKey()
  List<PokemonModel> get capturedPokemons {
    if (_capturedPokemons is EqualUnmodifiableListView)
      return _capturedPokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capturedPokemons);
  }

  final List<PokemonType> _typesFilter;
  @override
  @JsonKey()
  List<PokemonType> get typesFilter {
    if (_typesFilter is EqualUnmodifiableListView) return _typesFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_typesFilter);
  }

  @override
  final String? mostFrequentType;

  @override
  String toString() {
    return 'CapturedState(capturedPokemons: $capturedPokemons, typesFilter: $typesFilter, mostFrequentType: $mostFrequentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapturedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._capturedPokemons, _capturedPokemons) &&
            const DeepCollectionEquality()
                .equals(other._typesFilter, _typesFilter) &&
            (identical(other.mostFrequentType, mostFrequentType) ||
                other.mostFrequentType == mostFrequentType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_capturedPokemons),
      const DeepCollectionEquality().hash(_typesFilter),
      mostFrequentType);

  /// Create a copy of CapturedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CapturedStateImplCopyWith<_$CapturedStateImpl> get copyWith =>
      __$$CapturedStateImplCopyWithImpl<_$CapturedStateImpl>(this, _$identity);
}

abstract class _CapturedState extends CapturedState {
  const factory _CapturedState(
      {final List<PokemonModel> capturedPokemons,
      final List<PokemonType> typesFilter,
      final String? mostFrequentType}) = _$CapturedStateImpl;
  const _CapturedState._() : super._();

  @override
  List<PokemonModel> get capturedPokemons;
  @override
  List<PokemonType> get typesFilter;
  @override
  String? get mostFrequentType;

  /// Create a copy of CapturedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CapturedStateImplCopyWith<_$CapturedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
