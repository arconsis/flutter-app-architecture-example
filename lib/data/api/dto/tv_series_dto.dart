import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_dto.freezed.dart';

part 'tv_series_dto.g.dart';

@freezed
class TvSeriesDto with _$TvSeriesDto {
  const factory TvSeriesDto({
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'first_air_date') String? firstAirDate,
    @JsonKey(name: 'genre_ids') List<int?>? genreIds,
    required int id,
    required String name,
    @JsonKey(name: 'origin_country') List<String?>? originCountry,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_name') String? originalName,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _TvSeriesDto;

  factory TvSeriesDto.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesDtoFromJson(json);
}
