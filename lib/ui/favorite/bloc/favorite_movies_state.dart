import 'package:flutter_architecture/data/repos/model/movie_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_movies_state.freezed.dart';

sealed class FavoriteMoviesState {}

@freezed
class FavoriteMoviesLoading extends FavoriteMoviesState with _$FavoriteMoviesLoading {
  const factory FavoriteMoviesLoading() = _FavoriteMoviesLoading;
}

@freezed
class FavoriteMoviesLoaded extends FavoriteMoviesState with _$FavoriteMoviesLoaded {
  const factory FavoriteMoviesLoaded({
    required List<MovieDetail> favorites,
  }) = _FavoriteMoviesLoaded;
}

@freezed
class FavoriteMoviesError extends FavoriteMoviesState with _$FavoriteMoviesError {
  const factory FavoriteMoviesError() = _FavoriteMoviesError;
}
