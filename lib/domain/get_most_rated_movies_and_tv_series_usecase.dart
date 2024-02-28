import 'package:flutter_architecture/data/repos/model/most_rated_movies_and_tv_series.dart';
import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:flutter_architecture/data/repos/model/tv_series.dart';
import 'package:flutter_architecture/data/repos/movie_repository.dart';
import 'package:flutter_architecture/data/repos/result.dart';
import 'package:flutter_architecture/data/repos/tv_series_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMostRatedMoviesAndTvSeriesUseCase {
  final TvSeriesRepository _tvSeriesRepository;
  final MovieRepository _movieRepository;

  GetMostRatedMoviesAndTvSeriesUseCase(
    this._tvSeriesRepository,
    this._movieRepository,
  );

  Future<Result<MostRatedMoviesAndTvSeries>> call() async {
    const page = 1;
    final tvSeriesResult = await _tvSeriesRepository.getPopularTvSeries(page);
    final moviesResult = await _movieRepository.getPopularMovies(page);
    if (tvSeriesResult is ResultSuccess && moviesResult is ResultSuccess) {
      final data = MostRatedMoviesAndTvSeries(
        tvSeries: (tvSeriesResult as ResultSuccess<List<TvSeries>>).data,
        movies: (moviesResult as ResultSuccess<List<Movie>>).data,
      );
      return ResultSuccess(data);
    } else {
      return ResultError();
    }
  }
}
