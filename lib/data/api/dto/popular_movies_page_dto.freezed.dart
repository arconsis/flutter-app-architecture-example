// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_page_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularMoviesPageDto _$PopularMoviesPageDtoFromJson(Map<String, dynamic> json) {
  return _PopularMoviesPageDto.fromJson(json);
}

/// @nodoc
mixin _$PopularMoviesPageDto {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieDto> get movieDtoList => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularMoviesPageDtoCopyWith<PopularMoviesPageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesPageDtoCopyWith<$Res> {
  factory $PopularMoviesPageDtoCopyWith(PopularMoviesPageDto value,
          $Res Function(PopularMoviesPageDto) then) =
      _$PopularMoviesPageDtoCopyWithImpl<$Res, PopularMoviesPageDto>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'results') List<MovieDto> movieDtoList,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$PopularMoviesPageDtoCopyWithImpl<$Res,
        $Val extends PopularMoviesPageDto>
    implements $PopularMoviesPageDtoCopyWith<$Res> {
  _$PopularMoviesPageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movieDtoList = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movieDtoList: null == movieDtoList
          ? _value.movieDtoList
          : movieDtoList // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularMoviesPageDtoImplCopyWith<$Res>
    implements $PopularMoviesPageDtoCopyWith<$Res> {
  factory _$$PopularMoviesPageDtoImplCopyWith(_$PopularMoviesPageDtoImpl value,
          $Res Function(_$PopularMoviesPageDtoImpl) then) =
      __$$PopularMoviesPageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'results') List<MovieDto> movieDtoList,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$PopularMoviesPageDtoImplCopyWithImpl<$Res>
    extends _$PopularMoviesPageDtoCopyWithImpl<$Res, _$PopularMoviesPageDtoImpl>
    implements _$$PopularMoviesPageDtoImplCopyWith<$Res> {
  __$$PopularMoviesPageDtoImplCopyWithImpl(_$PopularMoviesPageDtoImpl _value,
      $Res Function(_$PopularMoviesPageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? movieDtoList = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$PopularMoviesPageDtoImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movieDtoList: null == movieDtoList
          ? _value._movieDtoList
          : movieDtoList // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularMoviesPageDtoImpl implements _PopularMoviesPageDto {
  const _$PopularMoviesPageDtoImpl(
      {required this.page,
      @JsonKey(name: 'results') required final List<MovieDto> movieDtoList,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _movieDtoList = movieDtoList;

  factory _$PopularMoviesPageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularMoviesPageDtoImplFromJson(json);

  @override
  final int page;
  final List<MovieDto> _movieDtoList;
  @override
  @JsonKey(name: 'results')
  List<MovieDto> get movieDtoList {
    if (_movieDtoList is EqualUnmodifiableListView) return _movieDtoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieDtoList);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'PopularMoviesPageDto(page: $page, movieDtoList: $movieDtoList, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMoviesPageDtoImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._movieDtoList, _movieDtoList) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_movieDtoList),
      totalPages,
      totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMoviesPageDtoImplCopyWith<_$PopularMoviesPageDtoImpl>
      get copyWith =>
          __$$PopularMoviesPageDtoImplCopyWithImpl<_$PopularMoviesPageDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularMoviesPageDtoImplToJson(
      this,
    );
  }
}

abstract class _PopularMoviesPageDto implements PopularMoviesPageDto {
  const factory _PopularMoviesPageDto(
          {required final int page,
          @JsonKey(name: 'results') required final List<MovieDto> movieDtoList,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$PopularMoviesPageDtoImpl;

  factory _PopularMoviesPageDto.fromJson(Map<String, dynamic> json) =
      _$PopularMoviesPageDtoImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MovieDto> get movieDtoList;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$PopularMoviesPageDtoImplCopyWith<_$PopularMoviesPageDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
