// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteMoviesLoading {}

/// @nodoc
abstract class $FavoriteMoviesLoadingCopyWith<$Res> {
  factory $FavoriteMoviesLoadingCopyWith(FavoriteMoviesLoading value,
          $Res Function(FavoriteMoviesLoading) then) =
      _$FavoriteMoviesLoadingCopyWithImpl<$Res, FavoriteMoviesLoading>;
}

/// @nodoc
class _$FavoriteMoviesLoadingCopyWithImpl<$Res,
        $Val extends FavoriteMoviesLoading>
    implements $FavoriteMoviesLoadingCopyWith<$Res> {
  _$FavoriteMoviesLoadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoriteMoviesLoadingImplCopyWith<$Res> {
  factory _$$FavoriteMoviesLoadingImplCopyWith(
          _$FavoriteMoviesLoadingImpl value,
          $Res Function(_$FavoriteMoviesLoadingImpl) then) =
      __$$FavoriteMoviesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteMoviesLoadingImplCopyWithImpl<$Res>
    extends _$FavoriteMoviesLoadingCopyWithImpl<$Res,
        _$FavoriteMoviesLoadingImpl>
    implements _$$FavoriteMoviesLoadingImplCopyWith<$Res> {
  __$$FavoriteMoviesLoadingImplCopyWithImpl(_$FavoriteMoviesLoadingImpl _value,
      $Res Function(_$FavoriteMoviesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteMoviesLoadingImpl implements _FavoriteMoviesLoading {
  const _$FavoriteMoviesLoadingImpl();

  @override
  String toString() {
    return 'FavoriteMoviesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMoviesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FavoriteMoviesLoading implements FavoriteMoviesLoading {
  const factory _FavoriteMoviesLoading() = _$FavoriteMoviesLoadingImpl;
}

/// @nodoc
mixin _$FavoriteMoviesLoaded {
  List<MovieDetail> get favorites => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteMoviesLoadedCopyWith<FavoriteMoviesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteMoviesLoadedCopyWith<$Res> {
  factory $FavoriteMoviesLoadedCopyWith(FavoriteMoviesLoaded value,
          $Res Function(FavoriteMoviesLoaded) then) =
      _$FavoriteMoviesLoadedCopyWithImpl<$Res, FavoriteMoviesLoaded>;
  @useResult
  $Res call({List<MovieDetail> favorites});
}

/// @nodoc
class _$FavoriteMoviesLoadedCopyWithImpl<$Res,
        $Val extends FavoriteMoviesLoaded>
    implements $FavoriteMoviesLoadedCopyWith<$Res> {
  _$FavoriteMoviesLoadedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MovieDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteMoviesLoadedImplCopyWith<$Res>
    implements $FavoriteMoviesLoadedCopyWith<$Res> {
  factory _$$FavoriteMoviesLoadedImplCopyWith(_$FavoriteMoviesLoadedImpl value,
          $Res Function(_$FavoriteMoviesLoadedImpl) then) =
      __$$FavoriteMoviesLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieDetail> favorites});
}

/// @nodoc
class __$$FavoriteMoviesLoadedImplCopyWithImpl<$Res>
    extends _$FavoriteMoviesLoadedCopyWithImpl<$Res, _$FavoriteMoviesLoadedImpl>
    implements _$$FavoriteMoviesLoadedImplCopyWith<$Res> {
  __$$FavoriteMoviesLoadedImplCopyWithImpl(_$FavoriteMoviesLoadedImpl _value,
      $Res Function(_$FavoriteMoviesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$FavoriteMoviesLoadedImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<MovieDetail>,
    ));
  }
}

/// @nodoc

class _$FavoriteMoviesLoadedImpl implements _FavoriteMoviesLoaded {
  const _$FavoriteMoviesLoadedImpl({required final List<MovieDetail> favorites})
      : _favorites = favorites;

  final List<MovieDetail> _favorites;
  @override
  List<MovieDetail> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'FavoriteMoviesLoaded(favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMoviesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteMoviesLoadedImplCopyWith<_$FavoriteMoviesLoadedImpl>
      get copyWith =>
          __$$FavoriteMoviesLoadedImplCopyWithImpl<_$FavoriteMoviesLoadedImpl>(
              this, _$identity);
}

abstract class _FavoriteMoviesLoaded implements FavoriteMoviesLoaded {
  const factory _FavoriteMoviesLoaded(
          {required final List<MovieDetail> favorites}) =
      _$FavoriteMoviesLoadedImpl;

  @override
  List<MovieDetail> get favorites;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteMoviesLoadedImplCopyWith<_$FavoriteMoviesLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteMoviesError {}

/// @nodoc
abstract class $FavoriteMoviesErrorCopyWith<$Res> {
  factory $FavoriteMoviesErrorCopyWith(
          FavoriteMoviesError value, $Res Function(FavoriteMoviesError) then) =
      _$FavoriteMoviesErrorCopyWithImpl<$Res, FavoriteMoviesError>;
}

/// @nodoc
class _$FavoriteMoviesErrorCopyWithImpl<$Res, $Val extends FavoriteMoviesError>
    implements $FavoriteMoviesErrorCopyWith<$Res> {
  _$FavoriteMoviesErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoriteMoviesErrorImplCopyWith<$Res> {
  factory _$$FavoriteMoviesErrorImplCopyWith(_$FavoriteMoviesErrorImpl value,
          $Res Function(_$FavoriteMoviesErrorImpl) then) =
      __$$FavoriteMoviesErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteMoviesErrorImplCopyWithImpl<$Res>
    extends _$FavoriteMoviesErrorCopyWithImpl<$Res, _$FavoriteMoviesErrorImpl>
    implements _$$FavoriteMoviesErrorImplCopyWith<$Res> {
  __$$FavoriteMoviesErrorImplCopyWithImpl(_$FavoriteMoviesErrorImpl _value,
      $Res Function(_$FavoriteMoviesErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteMoviesErrorImpl implements _FavoriteMoviesError {
  const _$FavoriteMoviesErrorImpl();

  @override
  String toString() {
    return 'FavoriteMoviesError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteMoviesErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FavoriteMoviesError implements FavoriteMoviesError {
  const factory _FavoriteMoviesError() = _$FavoriteMoviesErrorImpl;
}
