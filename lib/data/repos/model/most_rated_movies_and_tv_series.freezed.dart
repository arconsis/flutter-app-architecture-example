// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'most_rated_movies_and_tv_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MostRatedMoviesAndTvSeries {
  List<TvSeries> get tvSeries => throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MostRatedMoviesAndTvSeriesCopyWith<MostRatedMoviesAndTvSeries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostRatedMoviesAndTvSeriesCopyWith<$Res> {
  factory $MostRatedMoviesAndTvSeriesCopyWith(MostRatedMoviesAndTvSeries value,
          $Res Function(MostRatedMoviesAndTvSeries) then) =
      _$MostRatedMoviesAndTvSeriesCopyWithImpl<$Res,
          MostRatedMoviesAndTvSeries>;
  @useResult
  $Res call({List<TvSeries> tvSeries, List<Movie> movies});
}

/// @nodoc
class _$MostRatedMoviesAndTvSeriesCopyWithImpl<$Res,
        $Val extends MostRatedMoviesAndTvSeries>
    implements $MostRatedMoviesAndTvSeriesCopyWith<$Res> {
  _$MostRatedMoviesAndTvSeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvSeries = null,
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      tvSeries: null == tvSeries
          ? _value.tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
              as List<TvSeries>,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MostRatedMoviesAndTvSeriesImplCopyWith<$Res>
    implements $MostRatedMoviesAndTvSeriesCopyWith<$Res> {
  factory _$$MostRatedMoviesAndTvSeriesImplCopyWith(
          _$MostRatedMoviesAndTvSeriesImpl value,
          $Res Function(_$MostRatedMoviesAndTvSeriesImpl) then) =
      __$$MostRatedMoviesAndTvSeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TvSeries> tvSeries, List<Movie> movies});
}

/// @nodoc
class __$$MostRatedMoviesAndTvSeriesImplCopyWithImpl<$Res>
    extends _$MostRatedMoviesAndTvSeriesCopyWithImpl<$Res,
        _$MostRatedMoviesAndTvSeriesImpl>
    implements _$$MostRatedMoviesAndTvSeriesImplCopyWith<$Res> {
  __$$MostRatedMoviesAndTvSeriesImplCopyWithImpl(
      _$MostRatedMoviesAndTvSeriesImpl _value,
      $Res Function(_$MostRatedMoviesAndTvSeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvSeries = null,
    Object? movies = null,
  }) {
    return _then(_$MostRatedMoviesAndTvSeriesImpl(
      tvSeries: null == tvSeries
          ? _value._tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
              as List<TvSeries>,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$MostRatedMoviesAndTvSeriesImpl implements _MostRatedMoviesAndTvSeries {
  const _$MostRatedMoviesAndTvSeriesImpl(
      {required final List<TvSeries> tvSeries,
      required final List<Movie> movies})
      : _tvSeries = tvSeries,
        _movies = movies;

  final List<TvSeries> _tvSeries;
  @override
  List<TvSeries> get tvSeries {
    if (_tvSeries is EqualUnmodifiableListView) return _tvSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvSeries);
  }

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MostRatedMoviesAndTvSeries(tvSeries: $tvSeries, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MostRatedMoviesAndTvSeriesImpl &&
            const DeepCollectionEquality().equals(other._tvSeries, _tvSeries) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tvSeries),
      const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MostRatedMoviesAndTvSeriesImplCopyWith<_$MostRatedMoviesAndTvSeriesImpl>
      get copyWith => __$$MostRatedMoviesAndTvSeriesImplCopyWithImpl<
          _$MostRatedMoviesAndTvSeriesImpl>(this, _$identity);
}

abstract class _MostRatedMoviesAndTvSeries
    implements MostRatedMoviesAndTvSeries {
  const factory _MostRatedMoviesAndTvSeries(
      {required final List<TvSeries> tvSeries,
      required final List<Movie> movies}) = _$MostRatedMoviesAndTvSeriesImpl;

  @override
  List<TvSeries> get tvSeries;
  @override
  List<Movie> get movies;
  @override
  @JsonKey(ignore: true)
  _$$MostRatedMoviesAndTvSeriesImplCopyWith<_$MostRatedMoviesAndTvSeriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
