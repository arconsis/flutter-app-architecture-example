import 'package:floor/floor.dart';

@Entity(tableName: "movie_detail")
class MovieDetailEntity {
  final bool adult;
  final String? backdropPath;
  final int? budget;
  final String? homepage;
  @primaryKey
  final int id;
  final bool isFavorite;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String? posterPath;
  final String? releaseDate;
  final int revenue;
  final int? runtime;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  MovieDetailEntity({
    required this.budget,
    required this.homepage,
    required this.revenue,
    required this.runtime,
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.isFavorite,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
}
