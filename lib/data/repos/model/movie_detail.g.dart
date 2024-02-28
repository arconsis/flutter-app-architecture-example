// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailImpl _$$MovieDetailImplFromJson(Map<String, dynamic> json) =>
    _$MovieDetailImpl(
      adult: json['adult'] as bool,
      budget: json['budget'] as int?,
      backdropPath: json['backdropPath'] as String?,
      homepage: json['homepage'] as String?,
      id: json['id'] as int,
      isFavorite: json['isFavorite'] as bool,
      originalLanguage: json['originalLanguage'] as String,
      originalTitle: json['originalTitle'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['posterPath'] as String?,
      releaseDate: json['releaseDate'] as String?,
      revenue: json['revenue'] as int,
      runtime: json['runtime'] as int?,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: (json['voteAverage'] as num).toDouble(),
      voteCount: json['voteCount'] as int,
    );

Map<String, dynamic> _$$MovieDetailImplToJson(_$MovieDetailImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'budget': instance.budget,
      'backdropPath': instance.backdropPath,
      'homepage': instance.homepage,
      'id': instance.id,
      'isFavorite': instance.isFavorite,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
