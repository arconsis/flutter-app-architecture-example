// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_page_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvSeriesPageDtoImpl _$$TvSeriesPageDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TvSeriesPageDtoImpl(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => TvSeriesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$TvSeriesPageDtoImplToJson(
        _$TvSeriesPageDtoImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
