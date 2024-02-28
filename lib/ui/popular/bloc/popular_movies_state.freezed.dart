// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopularMoviesLoading {}

/// @nodoc
abstract class $PopularMoviesLoadingCopyWith<$Res> {
  factory $PopularMoviesLoadingCopyWith(PopularMoviesLoading value,
          $Res Function(PopularMoviesLoading) then) =
      _$PopularMoviesLoadingCopyWithImpl<$Res, PopularMoviesLoading>;
}

/// @nodoc
class _$PopularMoviesLoadingCopyWithImpl<$Res,
        $Val extends PopularMoviesLoading>
    implements $PopularMoviesLoadingCopyWith<$Res> {
  _$PopularMoviesLoadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PopularMoviesLoadingImplCopyWith<$Res> {
  factory _$$PopularMoviesLoadingImplCopyWith(_$PopularMoviesLoadingImpl value,
          $Res Function(_$PopularMoviesLoadingImpl) then) =
      __$$PopularMoviesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopularMoviesLoadingImplCopyWithImpl<$Res>
    extends _$PopularMoviesLoadingCopyWithImpl<$Res, _$PopularMoviesLoadingImpl>
    implements _$$PopularMoviesLoadingImplCopyWith<$Res> {
  __$$PopularMoviesLoadingImplCopyWithImpl(_$PopularMoviesLoadingImpl _value,
      $Res Function(_$PopularMoviesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PopularMoviesLoadingImpl implements _PopularMoviesLoading {
  const _$PopularMoviesLoadingImpl();

  @override
  String toString() {
    return 'PopularMoviesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMoviesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _PopularMoviesLoading implements PopularMoviesLoading {
  const factory _PopularMoviesLoading() = _$PopularMoviesLoadingImpl;
}

/// @nodoc
mixin _$PopularMoviesLoaded {
  List<Movie> get movies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopularMoviesLoadedCopyWith<PopularMoviesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesLoadedCopyWith<$Res> {
  factory $PopularMoviesLoadedCopyWith(
          PopularMoviesLoaded value, $Res Function(PopularMoviesLoaded) then) =
      _$PopularMoviesLoadedCopyWithImpl<$Res, PopularMoviesLoaded>;
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class _$PopularMoviesLoadedCopyWithImpl<$Res, $Val extends PopularMoviesLoaded>
    implements $PopularMoviesLoadedCopyWith<$Res> {
  _$PopularMoviesLoadedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularMoviesLoadedImplCopyWith<$Res>
    implements $PopularMoviesLoadedCopyWith<$Res> {
  factory _$$PopularMoviesLoadedImplCopyWith(_$PopularMoviesLoadedImpl value,
          $Res Function(_$PopularMoviesLoadedImpl) then) =
      __$$PopularMoviesLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$PopularMoviesLoadedImplCopyWithImpl<$Res>
    extends _$PopularMoviesLoadedCopyWithImpl<$Res, _$PopularMoviesLoadedImpl>
    implements _$$PopularMoviesLoadedImplCopyWith<$Res> {
  __$$PopularMoviesLoadedImplCopyWithImpl(_$PopularMoviesLoadedImpl _value,
      $Res Function(_$PopularMoviesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$PopularMoviesLoadedImpl(
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$PopularMoviesLoadedImpl implements _PopularMoviesLoaded {
  const _$PopularMoviesLoadedImpl({required final List<Movie> movies})
      : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'PopularMoviesLoaded(movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMoviesLoadedImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMoviesLoadedImplCopyWith<_$PopularMoviesLoadedImpl> get copyWith =>
      __$$PopularMoviesLoadedImplCopyWithImpl<_$PopularMoviesLoadedImpl>(
          this, _$identity);
}

abstract class _PopularMoviesLoaded implements PopularMoviesLoaded {
  const factory _PopularMoviesLoaded({required final List<Movie> movies}) =
      _$PopularMoviesLoadedImpl;

  @override
  List<Movie> get movies;
  @override
  @JsonKey(ignore: true)
  _$$PopularMoviesLoadedImplCopyWith<_$PopularMoviesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PopularMoviesError {}

/// @nodoc
abstract class $PopularMoviesErrorCopyWith<$Res> {
  factory $PopularMoviesErrorCopyWith(
          PopularMoviesError value, $Res Function(PopularMoviesError) then) =
      _$PopularMoviesErrorCopyWithImpl<$Res, PopularMoviesError>;
}

/// @nodoc
class _$PopularMoviesErrorCopyWithImpl<$Res, $Val extends PopularMoviesError>
    implements $PopularMoviesErrorCopyWith<$Res> {
  _$PopularMoviesErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PopularMoviesErrorImplCopyWith<$Res> {
  factory _$$PopularMoviesErrorImplCopyWith(_$PopularMoviesErrorImpl value,
          $Res Function(_$PopularMoviesErrorImpl) then) =
      __$$PopularMoviesErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopularMoviesErrorImplCopyWithImpl<$Res>
    extends _$PopularMoviesErrorCopyWithImpl<$Res, _$PopularMoviesErrorImpl>
    implements _$$PopularMoviesErrorImplCopyWith<$Res> {
  __$$PopularMoviesErrorImplCopyWithImpl(_$PopularMoviesErrorImpl _value,
      $Res Function(_$PopularMoviesErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PopularMoviesErrorImpl implements _PopularMoviesError {
  const _$PopularMoviesErrorImpl();

  @override
  String toString() {
    return 'PopularMoviesError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PopularMoviesErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _PopularMoviesError implements PopularMoviesError {
  const factory _PopularMoviesError() = _$PopularMoviesErrorImpl;
}
