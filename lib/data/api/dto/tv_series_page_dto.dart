import 'package:flutter_architecture/data/api/dto/tv_series_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_page_dto.freezed.dart';

part 'tv_series_page_dto.g.dart';

@freezed
class TvSeriesPageDto with _$TvSeriesPageDto {
  const factory TvSeriesPageDto({
    required int page,
    required List<TvSeriesDto> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _TvSeriesPageDto;

  factory TvSeriesPageDto.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesPageDtoFromJson(json);
}
