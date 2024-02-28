// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvSeriesDto _$TvSeriesDtoFromJson(Map<String, dynamic> json) {
  return _TvSeriesDto.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesDto {
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_air_date')
  String? get firstAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int?>? get genreIds => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  List<String?>? get originCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesDtoCopyWith<TvSeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesDtoCopyWith<$Res> {
  factory $TvSeriesDtoCopyWith(
          TvSeriesDto value, $Res Function(TvSeriesDto) then) =
      _$TvSeriesDtoCopyWithImpl<$Res, TvSeriesDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'first_air_date') String? firstAirDate,
      @JsonKey(name: 'genre_ids') List<int?>? genreIds,
      int id,
      String name,
      @JsonKey(name: 'origin_country') List<String?>? originCountry,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_name') String? originalName,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class _$TvSeriesDtoCopyWithImpl<$Res, $Val extends TvSeriesDto>
    implements $TvSeriesDtoCopyWith<$Res> {
  _$TvSeriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? firstAirDate = freezed,
    Object? genreIds = freezed,
    Object? id = null,
    Object? name = null,
    Object? originCountry = freezed,
    Object? originalLanguage = freezed,
    Object? originalName = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesDtoImplCopyWith<$Res>
    implements $TvSeriesDtoCopyWith<$Res> {
  factory _$$TvSeriesDtoImplCopyWith(
          _$TvSeriesDtoImpl value, $Res Function(_$TvSeriesDtoImpl) then) =
      __$$TvSeriesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'first_air_date') String? firstAirDate,
      @JsonKey(name: 'genre_ids') List<int?>? genreIds,
      int id,
      String name,
      @JsonKey(name: 'origin_country') List<String?>? originCountry,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_name') String? originalName,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class __$$TvSeriesDtoImplCopyWithImpl<$Res>
    extends _$TvSeriesDtoCopyWithImpl<$Res, _$TvSeriesDtoImpl>
    implements _$$TvSeriesDtoImplCopyWith<$Res> {
  __$$TvSeriesDtoImplCopyWithImpl(
      _$TvSeriesDtoImpl _value, $Res Function(_$TvSeriesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? firstAirDate = freezed,
    Object? genreIds = freezed,
    Object? id = null,
    Object? name = null,
    Object? originCountry = freezed,
    Object? originalLanguage = freezed,
    Object? originalName = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$TvSeriesDtoImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: freezed == originCountry
          ? _value._originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvSeriesDtoImpl implements _TvSeriesDto {
  const _$TvSeriesDtoImpl(
      {@JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'first_air_date') this.firstAirDate,
      @JsonKey(name: 'genre_ids') final List<int?>? genreIds,
      required this.id,
      required this.name,
      @JsonKey(name: 'origin_country') final List<String?>? originCountry,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_name') this.originalName,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount})
      : _genreIds = genreIds,
        _originCountry = originCountry;

  factory _$TvSeriesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesDtoImplFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'first_air_date')
  final String? firstAirDate;
  final List<int?>? _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int?>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int id;
  @override
  final String name;
  final List<String?>? _originCountry;
  @override
  @JsonKey(name: 'origin_country')
  List<String?>? get originCountry {
    final value = _originCountry;
    if (value == null) return null;
    if (_originCountry is EqualUnmodifiableListView) return _originCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  final String? originalName;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @override
  String toString() {
    return 'TvSeriesDto(backdropPath: $backdropPath, firstAirDate: $firstAirDate, genreIds: $genreIds, id: $id, name: $name, originCountry: $originCountry, originalLanguage: $originalLanguage, originalName: $originalName, overview: $overview, popularity: $popularity, posterPath: $posterPath, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesDtoImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._originCountry, _originCountry) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      firstAirDate,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      name,
      const DeepCollectionEquality().hash(_originCountry),
      originalLanguage,
      originalName,
      overview,
      popularity,
      posterPath,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesDtoImplCopyWith<_$TvSeriesDtoImpl> get copyWith =>
      __$$TvSeriesDtoImplCopyWithImpl<_$TvSeriesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesDtoImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesDto implements TvSeriesDto {
  const factory _TvSeriesDto(
      {@JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'first_air_date') final String? firstAirDate,
      @JsonKey(name: 'genre_ids') final List<int?>? genreIds,
      required final int id,
      required final String name,
      @JsonKey(name: 'origin_country') final List<String?>? originCountry,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_name') final String? originalName,
      final String? overview,
      final double? popularity,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'vote_count') final int? voteCount}) = _$TvSeriesDtoImpl;

  factory _TvSeriesDto.fromJson(Map<String, dynamic> json) =
      _$TvSeriesDtoImpl.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'first_air_date')
  String? get firstAirDate;
  @override
  @JsonKey(name: 'genre_ids')
  List<int?>? get genreIds;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'origin_country')
  List<String?>? get originCountry;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  String? get originalName;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesDtoImplCopyWith<_$TvSeriesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
