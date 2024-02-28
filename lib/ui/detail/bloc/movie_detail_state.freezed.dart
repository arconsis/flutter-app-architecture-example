// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailLoading {}

/// @nodoc
abstract class $MovieDetailLoadingCopyWith<$Res> {
  factory $MovieDetailLoadingCopyWith(
          MovieDetailLoading value, $Res Function(MovieDetailLoading) then) =
      _$MovieDetailLoadingCopyWithImpl<$Res, MovieDetailLoading>;
}

/// @nodoc
class _$MovieDetailLoadingCopyWithImpl<$Res, $Val extends MovieDetailLoading>
    implements $MovieDetailLoadingCopyWith<$Res> {
  _$MovieDetailLoadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieDetailLoadingImplCopyWith<$Res> {
  factory _$$MovieDetailLoadingImplCopyWith(_$MovieDetailLoadingImpl value,
          $Res Function(_$MovieDetailLoadingImpl) then) =
      __$$MovieDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieDetailLoadingImplCopyWithImpl<$Res>
    extends _$MovieDetailLoadingCopyWithImpl<$Res, _$MovieDetailLoadingImpl>
    implements _$$MovieDetailLoadingImplCopyWith<$Res> {
  __$$MovieDetailLoadingImplCopyWithImpl(_$MovieDetailLoadingImpl _value,
      $Res Function(_$MovieDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieDetailLoadingImpl implements _MovieDetailLoading {
  const _$MovieDetailLoadingImpl();

  @override
  String toString() {
    return 'MovieDetailLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _MovieDetailLoading implements MovieDetailLoading {
  const factory _MovieDetailLoading() = _$MovieDetailLoadingImpl;
}

/// @nodoc
mixin _$MovieDetailLoaded {
  MovieDetail get movie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailLoadedCopyWith<MovieDetailLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailLoadedCopyWith<$Res> {
  factory $MovieDetailLoadedCopyWith(
          MovieDetailLoaded value, $Res Function(MovieDetailLoaded) then) =
      _$MovieDetailLoadedCopyWithImpl<$Res, MovieDetailLoaded>;
  @useResult
  $Res call({MovieDetail movie});

  $MovieDetailCopyWith<$Res> get movie;
}

/// @nodoc
class _$MovieDetailLoadedCopyWithImpl<$Res, $Val extends MovieDetailLoaded>
    implements $MovieDetailLoadedCopyWith<$Res> {
  _$MovieDetailLoadedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_value.copyWith(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDetailCopyWith<$Res> get movie {
    return $MovieDetailCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailLoadedImplCopyWith<$Res>
    implements $MovieDetailLoadedCopyWith<$Res> {
  factory _$$MovieDetailLoadedImplCopyWith(_$MovieDetailLoadedImpl value,
          $Res Function(_$MovieDetailLoadedImpl) then) =
      __$$MovieDetailLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MovieDetail movie});

  @override
  $MovieDetailCopyWith<$Res> get movie;
}

/// @nodoc
class __$$MovieDetailLoadedImplCopyWithImpl<$Res>
    extends _$MovieDetailLoadedCopyWithImpl<$Res, _$MovieDetailLoadedImpl>
    implements _$$MovieDetailLoadedImplCopyWith<$Res> {
  __$$MovieDetailLoadedImplCopyWithImpl(_$MovieDetailLoadedImpl _value,
      $Res Function(_$MovieDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$MovieDetailLoadedImpl(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetail,
    ));
  }
}

/// @nodoc

class _$MovieDetailLoadedImpl implements _MovieDetailLoaded {
  const _$MovieDetailLoadedImpl({required this.movie});

  @override
  final MovieDetail movie;

  @override
  String toString() {
    return 'MovieDetailLoaded(movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailLoadedImpl &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailLoadedImplCopyWith<_$MovieDetailLoadedImpl> get copyWith =>
      __$$MovieDetailLoadedImplCopyWithImpl<_$MovieDetailLoadedImpl>(
          this, _$identity);
}

abstract class _MovieDetailLoaded implements MovieDetailLoaded {
  const factory _MovieDetailLoaded({required final MovieDetail movie}) =
      _$MovieDetailLoadedImpl;

  @override
  MovieDetail get movie;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailLoadedImplCopyWith<_$MovieDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailError {}

/// @nodoc
abstract class $MovieDetailErrorCopyWith<$Res> {
  factory $MovieDetailErrorCopyWith(
          MovieDetailError value, $Res Function(MovieDetailError) then) =
      _$MovieDetailErrorCopyWithImpl<$Res, MovieDetailError>;
}

/// @nodoc
class _$MovieDetailErrorCopyWithImpl<$Res, $Val extends MovieDetailError>
    implements $MovieDetailErrorCopyWith<$Res> {
  _$MovieDetailErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieDetailErrorImplCopyWith<$Res> {
  factory _$$MovieDetailErrorImplCopyWith(_$MovieDetailErrorImpl value,
          $Res Function(_$MovieDetailErrorImpl) then) =
      __$$MovieDetailErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieDetailErrorImplCopyWithImpl<$Res>
    extends _$MovieDetailErrorCopyWithImpl<$Res, _$MovieDetailErrorImpl>
    implements _$$MovieDetailErrorImplCopyWith<$Res> {
  __$$MovieDetailErrorImplCopyWithImpl(_$MovieDetailErrorImpl _value,
      $Res Function(_$MovieDetailErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieDetailErrorImpl implements _MovieDetailError {
  const _$MovieDetailErrorImpl();

  @override
  String toString() {
    return 'MovieDetailError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieDetailErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _MovieDetailError implements MovieDetailError {
  const factory _MovieDetailError() = _$MovieDetailErrorImpl;
}
