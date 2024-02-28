import 'package:flutter_architecture/data/repos/model/most_rated_movies_and_tv_series.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'most_rated_movies_and_tv_series_state.freezed.dart';

sealed class MostRatedMoviesAndTvSeriesState {}

@freezed
class MostRatedMoviesAndTvSeriesLoading extends MostRatedMoviesAndTvSeriesState
    with _$MostRatedMoviesAndTvSeriesLoading {
  const factory MostRatedMoviesAndTvSeriesLoading() =
      _MostRatedMoviesAndTvSeriesLoading;
}

@freezed
class MostRatedMoviesAndTvSeriesLoaded extends MostRatedMoviesAndTvSeriesState
    with _$MostRatedMoviesAndTvSeriesLoaded {
  const factory MostRatedMoviesAndTvSeriesLoaded({
    required MostRatedMoviesAndTvSeries mostRated,
  }) = _MostRatedMoviesAndTvSeriesLoaded;
}

@freezed
class MostRatedMoviesAndTvSeriesError extends MostRatedMoviesAndTvSeriesState
    with _$MostRatedMoviesAndTvSeriesError {
  const factory MostRatedMoviesAndTvSeriesError() =
      _MostRatedMoviesAndTvSeriesError;
}
