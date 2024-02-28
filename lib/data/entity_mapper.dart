import 'package:flutter_architecture/constants.dart';
import 'package:flutter_architecture/data/db/entity/movie_detail_entity.dart';
import 'package:flutter_architecture/data/repos/model/movie_detail.dart';

extension MovieDetailEntityMapping on MovieDetailEntity {
  MovieDetail toMovieDetail() {
    return MovieDetail(
      id: id,
      budget: budget,
      adult: adult,
      backdropPath: "${Constants.IMAGE_BASE_URL}/$backdropPath",
      originalLanguage: originalLanguage,
      originalTitle: originalLanguage,
      overview: overview,
      isFavorite: isFavorite,
      popularity: popularity,
      posterPath: "${Constants.IMAGE_BASE_URL}/$posterPath",
      releaseDate: releaseDate,
      revenue: revenue,
      runtime: runtime,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}

extension MovieDetailEntityListMapping on List<MovieDetailEntity> {
  List<MovieDetail> toMovieDetailList() {
    return map((entity) => entity.toMovieDetail()).toList();
  }
}
