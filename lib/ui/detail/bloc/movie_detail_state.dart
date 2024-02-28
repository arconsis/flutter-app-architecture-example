import 'package:flutter_architecture/data/repos/model/movie_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_state.freezed.dart';

sealed class MovieDetailState {}

@freezed
class MovieDetailLoading extends MovieDetailState with _$MovieDetailLoading {
  const factory MovieDetailLoading() = _MovieDetailLoading;
}

@freezed
class MovieDetailLoaded extends MovieDetailState with _$MovieDetailLoaded {
  const factory MovieDetailLoaded({
    required MovieDetail movie,
  }) = _MovieDetailLoaded;
}

@freezed
class MovieDetailError extends MovieDetailState with _$MovieDetailError {
  const factory MovieDetailError() = _MovieDetailError;
}
