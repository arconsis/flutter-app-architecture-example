import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:flutter_architecture/data/repos/movie_repository.dart';
import 'package:flutter_architecture/data/repos/result.dart';
import 'package:flutter_architecture/di/get_it.dart';
import 'package:flutter_architecture/ui/popular/bloc/popular_movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  final MovieRepository _movieRepository;

  int _currentPage = 1;

  factory PopularMoviesCubit.create() => PopularMoviesCubit(
        get<MovieRepository>(),
      );

  PopularMoviesCubit(this._movieRepository)
      : super(const PopularMoviesLoading()) {
    loadPopularMovies();
  }

  void loadPopularMovies() async {
    final result = await _movieRepository.getPopularMovies(_currentPage);
    ++_currentPage;
    switch (result) {
      case ResultSuccess():
        final List<Movie> list = [];
        if (state is PopularMoviesLoaded) {
          list.addAll((state as PopularMoviesLoaded).movies);
        }
        emit(PopularMoviesLoaded(movies: list..addAll(result.data)));
      case ResultError():
        emit(const PopularMoviesError());
    }
  }
}
