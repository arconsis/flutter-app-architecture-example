import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:flutter_architecture/data/repos/model/tv_series.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'most_rated_movies_and_tv_series.freezed.dart';

@freezed
class MostRatedMoviesAndTvSeries with _$MostRatedMoviesAndTvSeries {
  const factory MostRatedMoviesAndTvSeries({
    required List<TvSeries> tvSeries,
    required List<Movie> movies,
  }) = _MostRatedMoviesAndTvSeries;
}
