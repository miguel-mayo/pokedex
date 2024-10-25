// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  LoadingStatus get pokedexStatus => throw _privateConstructorUsedError;
  LoadingStatus get pokemonStatus => throw _privateConstructorUsedError;
  List<PokemonModel> get pokemons => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  List<PokemonType> get typesFilter => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  String? get nameFilter => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {LoadingStatus pokedexStatus,
      LoadingStatus pokemonStatus,
      List<PokemonModel> pokemons,
      int currentPage,
      List<PokemonType> typesFilter,
      bool hasReachedEnd,
      String? nameFilter,
      String? errorMessage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedexStatus = null,
    Object? pokemonStatus = null,
    Object? pokemons = null,
    Object? currentPage = null,
    Object? typesFilter = null,
    Object? hasReachedEnd = null,
    Object? nameFilter = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      pokedexStatus: null == pokedexStatus
          ? _value.pokedexStatus
          : pokedexStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      pokemonStatus: null == pokemonStatus
          ? _value.pokemonStatus
          : pokemonStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      typesFilter: null == typesFilter
          ? _value.typesFilter
          : typesFilter // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      nameFilter: freezed == nameFilter
          ? _value.nameFilter
          : nameFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingStatus pokedexStatus,
      LoadingStatus pokemonStatus,
      List<PokemonModel> pokemons,
      int currentPage,
      List<PokemonType> typesFilter,
      bool hasReachedEnd,
      String? nameFilter,
      String? errorMessage});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedexStatus = null,
    Object? pokemonStatus = null,
    Object? pokemons = null,
    Object? currentPage = null,
    Object? typesFilter = null,
    Object? hasReachedEnd = null,
    Object? nameFilter = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomeStateImpl(
      pokedexStatus: null == pokedexStatus
          ? _value.pokedexStatus
          : pokedexStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      pokemonStatus: null == pokemonStatus
          ? _value.pokemonStatus
          : pokemonStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      typesFilter: null == typesFilter
          ? _value._typesFilter
          : typesFilter // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      nameFilter: freezed == nameFilter
          ? _value.nameFilter
          : nameFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.pokedexStatus = LoadingStatus.initial,
      this.pokemonStatus = LoadingStatus.initial,
      final List<PokemonModel> pokemons = const [],
      this.currentPage = 0,
      final List<PokemonType> typesFilter = const [],
      this.hasReachedEnd = false,
      this.nameFilter,
      this.errorMessage})
      : _pokemons = pokemons,
        _typesFilter = typesFilter;

  @override
  @JsonKey()
  final LoadingStatus pokedexStatus;
  @override
  @JsonKey()
  final LoadingStatus pokemonStatus;
  final List<PokemonModel> _pokemons;
  @override
  @JsonKey()
  List<PokemonModel> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  @JsonKey()
  final int currentPage;
  final List<PokemonType> _typesFilter;
  @override
  @JsonKey()
  List<PokemonType> get typesFilter {
    if (_typesFilter is EqualUnmodifiableListView) return _typesFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_typesFilter);
  }

  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  final String? nameFilter;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(pokedexStatus: $pokedexStatus, pokemonStatus: $pokemonStatus, pokemons: $pokemons, currentPage: $currentPage, typesFilter: $typesFilter, hasReachedEnd: $hasReachedEnd, nameFilter: $nameFilter, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.pokedexStatus, pokedexStatus) ||
                other.pokedexStatus == pokedexStatus) &&
            (identical(other.pokemonStatus, pokemonStatus) ||
                other.pokemonStatus == pokemonStatus) &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._typesFilter, _typesFilter) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.nameFilter, nameFilter) ||
                other.nameFilter == nameFilter) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pokedexStatus,
      pokemonStatus,
      const DeepCollectionEquality().hash(_pokemons),
      currentPage,
      const DeepCollectionEquality().hash(_typesFilter),
      hasReachedEnd,
      nameFilter,
      errorMessage);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final LoadingStatus pokedexStatus,
      final LoadingStatus pokemonStatus,
      final List<PokemonModel> pokemons,
      final int currentPage,
      final List<PokemonType> typesFilter,
      final bool hasReachedEnd,
      final String? nameFilter,
      final String? errorMessage}) = _$HomeStateImpl;

  @override
  LoadingStatus get pokedexStatus;
  @override
  LoadingStatus get pokemonStatus;
  @override
  List<PokemonModel> get pokemons;
  @override
  int get currentPage;
  @override
  List<PokemonType> get typesFilter;
  @override
  bool get hasReachedEnd;
  @override
  String? get nameFilter;
  @override
  String? get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
