// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvSeriesImpl _$$TvSeriesImplFromJson(Map<String, dynamic> json) =>
    _$TvSeriesImpl(
      backdropPath: json['backdropPath'] as String?,
      firstAirDate: json['firstAirDate'] as String?,
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['posterPath'] as String?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: json['voteCount'] as int?,
    );

Map<String, dynamic> _$$TvSeriesImplToJson(_$TvSeriesImpl instance) =>
    <String, dynamic>{
      'backdropPath': instance.backdropPath,
      'firstAirDate': instance.firstAirDate,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
