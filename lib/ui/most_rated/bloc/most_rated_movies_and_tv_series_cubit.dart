import 'package:flutter_architecture/data/repos/model/most_rated_movies_and_tv_series.dart';
import 'package:flutter_architecture/data/repos/result.dart';
import 'package:flutter_architecture/di/get_it.dart';
import 'package:flutter_architecture/domain/get_most_rated_movies_and_tv_series_usecase.dart';
import 'package:flutter_architecture/ui/most_rated/bloc/most_rated_movies_and_tv_series_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MostRatedMoviesAndTvSeriesCubit
    extends Cubit<MostRatedMoviesAndTvSeriesState> {
  final GetMostRatedMoviesAndTvSeriesUseCase
      _getMostPopularMoviesAndTvSeriesUseCase;

  factory MostRatedMoviesAndTvSeriesCubit.create() =>
      MostRatedMoviesAndTvSeriesCubit(
        get<GetMostRatedMoviesAndTvSeriesUseCase>(),
      );

  MostRatedMoviesAndTvSeriesCubit(this._getMostPopularMoviesAndTvSeriesUseCase)
      : super(const MostRatedMoviesAndTvSeriesLoading()) {
    loadMostRated();
  }

  Future<void> loadMostRated() async {
    final result = await _getMostPopularMoviesAndTvSeriesUseCase();

    switch (result) {
      case ResultSuccess<MostRatedMoviesAndTvSeries>():
        emit(MostRatedMoviesAndTvSeriesLoaded(mostRated: result.data));
      case ResultError<MostRatedMoviesAndTvSeries>():
        emit(const MostRatedMoviesAndTvSeriesError());
    }
  }
}
