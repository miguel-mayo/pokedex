// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonDetailState {
  LoadingStatus get status => throw _privateConstructorUsedError;
  PokemonModel get pokemon => throw _privateConstructorUsedError;
  List<PokemonModel> get pokemonStored => throw _privateConstructorUsedError;
  PokemonSpecieModel get pokemonSpecie => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDetailStateCopyWith<PokemonDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailStateCopyWith<$Res> {
  factory $PokemonDetailStateCopyWith(
          PokemonDetailState value, $Res Function(PokemonDetailState) then) =
      _$PokemonDetailStateCopyWithImpl<$Res, PokemonDetailState>;
  @useResult
  $Res call(
      {LoadingStatus status,
      PokemonModel pokemon,
      List<PokemonModel> pokemonStored,
      PokemonSpecieModel pokemonSpecie,
      String? errorMessage});

  $PokemonModelCopyWith<$Res> get pokemon;
  $PokemonSpecieModelCopyWith<$Res> get pokemonSpecie;
}

/// @nodoc
class _$PokemonDetailStateCopyWithImpl<$Res, $Val extends PokemonDetailState>
    implements $PokemonDetailStateCopyWith<$Res> {
  _$PokemonDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemon = null,
    Object? pokemonStored = null,
    Object? pokemonSpecie = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonModel,
      pokemonStored: null == pokemonStored
          ? _value.pokemonStored
          : pokemonStored // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
      pokemonSpecie: null == pokemonSpecie
          ? _value.pokemonSpecie
          : pokemonSpecie // ignore: cast_nullable_to_non_nullable
              as PokemonSpecieModel,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonModelCopyWith<$Res> get pokemon {
    return $PokemonModelCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpecieModelCopyWith<$Res> get pokemonSpecie {
    return $PokemonSpecieModelCopyWith<$Res>(_value.pokemonSpecie, (value) {
      return _then(_value.copyWith(pokemonSpecie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailStateImplCopyWith<$Res>
    implements $PokemonDetailStateCopyWith<$Res> {
  factory _$$PokemonDetailStateImplCopyWith(_$PokemonDetailStateImpl value,
          $Res Function(_$PokemonDetailStateImpl) then) =
      __$$PokemonDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingStatus status,
      PokemonModel pokemon,
      List<PokemonModel> pokemonStored,
      PokemonSpecieModel pokemonSpecie,
      String? errorMessage});

  @override
  $PokemonModelCopyWith<$Res> get pokemon;
  @override
  $PokemonSpecieModelCopyWith<$Res> get pokemonSpecie;
}

/// @nodoc
class __$$PokemonDetailStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailStateCopyWithImpl<$Res, _$PokemonDetailStateImpl>
    implements _$$PokemonDetailStateImplCopyWith<$Res> {
  __$$PokemonDetailStateImplCopyWithImpl(_$PokemonDetailStateImpl _value,
      $Res Function(_$PokemonDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pokemon = null,
    Object? pokemonStored = null,
    Object? pokemonSpecie = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PokemonDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonModel,
      pokemonStored: null == pokemonStored
          ? _value._pokemonStored
          : pokemonStored // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
      pokemonSpecie: null == pokemonSpecie
          ? _value.pokemonSpecie
          : pokemonSpecie // ignore: cast_nullable_to_non_nullable
              as PokemonSpecieModel,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PokemonDetailStateImpl extends _PokemonDetailState {
  const _$PokemonDetailStateImpl(
      {this.status = LoadingStatus.initial,
      this.pokemon = PokemonModel.empty,
      final List<PokemonModel> pokemonStored = const [],
      this.pokemonSpecie = PokemonSpecieModel.empty,
      this.errorMessage})
      : _pokemonStored = pokemonStored,
        super._();

  @override
  @JsonKey()
  final LoadingStatus status;
  @override
  @JsonKey()
  final PokemonModel pokemon;
  final List<PokemonModel> _pokemonStored;
  @override
  @JsonKey()
  List<PokemonModel> get pokemonStored {
    if (_pokemonStored is EqualUnmodifiableListView) return _pokemonStored;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonStored);
  }

  @override
  @JsonKey()
  final PokemonSpecieModel pokemonSpecie;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PokemonDetailState(status: $status, pokemon: $pokemon, pokemonStored: $pokemonStored, pokemonSpecie: $pokemonSpecie, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            const DeepCollectionEquality()
                .equals(other._pokemonStored, _pokemonStored) &&
            (identical(other.pokemonSpecie, pokemonSpecie) ||
                other.pokemonSpecie == pokemonSpecie) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      pokemon,
      const DeepCollectionEquality().hash(_pokemonStored),
      pokemonSpecie,
      errorMessage);

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailStateImplCopyWith<_$PokemonDetailStateImpl> get copyWith =>
      __$$PokemonDetailStateImplCopyWithImpl<_$PokemonDetailStateImpl>(
          this, _$identity);
}

abstract class _PokemonDetailState extends PokemonDetailState {
  const factory _PokemonDetailState(
      {final LoadingStatus status,
      final PokemonModel pokemon,
      final List<PokemonModel> pokemonStored,
      final PokemonSpecieModel pokemonSpecie,
      final String? errorMessage}) = _$PokemonDetailStateImpl;
  const _PokemonDetailState._() : super._();

  @override
  LoadingStatus get status;
  @override
  PokemonModel get pokemon;
  @override
  List<PokemonModel> get pokemonStored;
  @override
  PokemonSpecieModel get pokemonSpecie;
  @override
  String? get errorMessage;

  /// Create a copy of PokemonDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDetailStateImplCopyWith<_$PokemonDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
