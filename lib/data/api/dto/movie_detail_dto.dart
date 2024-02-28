import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_dto.freezed.dart';

part 'movie_detail_dto.g.dart';

@freezed
class MovieDetailDto with _$MovieDetailDto {
  const factory MovieDetailDto({
    required bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required int? budget,
    @JsonKey(name: 'genre_ids') required List<int>? genreIds,
    required int id,
    required String? homepage,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    required int revenue,
    required int? runtime,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _MovieDetailDto;

  factory MovieDetailDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailDtoFromJson(json);
}
