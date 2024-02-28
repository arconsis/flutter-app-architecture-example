import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';

part 'movie_detail.g.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required bool adult,
    int? budget,
    String? backdropPath,
    String? homepage,
    required int id,
    required bool isFavorite,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    String? posterPath,
    String? releaseDate,
    required int revenue,
    int? runtime,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}
