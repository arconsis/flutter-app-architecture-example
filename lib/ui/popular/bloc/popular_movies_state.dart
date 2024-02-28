import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_state.freezed.dart';

sealed class PopularMoviesState {}

@freezed
class PopularMoviesLoading extends PopularMoviesState
    with _$PopularMoviesLoading {
  const factory PopularMoviesLoading() = _PopularMoviesLoading;
}

@freezed
class PopularMoviesLoaded extends PopularMoviesState
    with _$PopularMoviesLoaded {
  const factory PopularMoviesLoaded({
    required List<Movie> movies,
  }) = _PopularMoviesLoaded;
}

@freezed
class PopularMoviesError extends PopularMoviesState with _$PopularMoviesError {
  const factory PopularMoviesError() = _PopularMoviesError;
}
