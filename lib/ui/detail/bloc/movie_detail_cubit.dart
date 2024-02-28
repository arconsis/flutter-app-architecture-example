import 'package:flutter_architecture/data/repos/model/movie_detail.dart';
import 'package:flutter_architecture/data/repos/movie_detail_repository.dart';
import 'package:flutter_architecture/data/repos/result.dart';
import 'package:flutter_architecture/di/get_it.dart';
import 'package:flutter_architecture/ui/detail/bloc/movie_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  final MovieDetailRepository _movieDetailRepository;
  final int movieId;

  factory MovieDetailCubit.create(int movieId) => MovieDetailCubit(
        movieId,
        get<MovieDetailRepository>(),
      );

  MovieDetailCubit(this.movieId, this._movieDetailRepository)
      : super(const MovieDetailLoading()) {
    loadMovieDetail();
  }

  Future<void> loadMovieDetail() async {
    final result = await _movieDetailRepository.getMovieDetails(movieId);
    switch (result) {
      case ResultSuccess<Stream<MovieDetail?>>():
        result.data.listen((newMovieDetail) {
          if (newMovieDetail != null) {
            emit(MovieDetailLoaded(movie: newMovieDetail));
          } else {
            emit(const MovieDetailError());
          }
        });
      case ResultError<Stream<MovieDetail?>>():
        emit(const MovieDetailError());
    }
  }

  void toggleFavorite(int movieId) async {
    _movieDetailRepository.toggleFavorite(movieId);
  }
}
