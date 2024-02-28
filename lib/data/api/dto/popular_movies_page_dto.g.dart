// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_page_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularMoviesPageDtoImpl _$$PopularMoviesPageDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularMoviesPageDtoImpl(
      page: json['page'] as int,
      movieDtoList: (json['results'] as List<dynamic>)
          .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$PopularMoviesPageDtoImplToJson(
        _$PopularMoviesPageDtoImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movieDtoList,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
