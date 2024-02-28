// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_page_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvSeriesPageDto _$TvSeriesPageDtoFromJson(Map<String, dynamic> json) {
  return _TvSeriesPageDto.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesPageDto {
  int get page => throw _privateConstructorUsedError;
  List<TvSeriesDto> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesPageDtoCopyWith<TvSeriesPageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesPageDtoCopyWith<$Res> {
  factory $TvSeriesPageDtoCopyWith(
          TvSeriesPageDto value, $Res Function(TvSeriesPageDto) then) =
      _$TvSeriesPageDtoCopyWithImpl<$Res, TvSeriesPageDto>;
  @useResult
  $Res call(
      {int page,
      List<TvSeriesDto> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$TvSeriesPageDtoCopyWithImpl<$Res, $Val extends TvSeriesPageDto>
    implements $TvSeriesPageDtoCopyWith<$Res> {
  _$TvSeriesPageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TvSeriesDto>,
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
abstract class _$$TvSeriesPageDtoImplCopyWith<$Res>
    implements $TvSeriesPageDtoCopyWith<$Res> {
  factory _$$TvSeriesPageDtoImplCopyWith(_$TvSeriesPageDtoImpl value,
          $Res Function(_$TvSeriesPageDtoImpl) then) =
      __$$TvSeriesPageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<TvSeriesDto> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$TvSeriesPageDtoImplCopyWithImpl<$Res>
    extends _$TvSeriesPageDtoCopyWithImpl<$Res, _$TvSeriesPageDtoImpl>
    implements _$$TvSeriesPageDtoImplCopyWith<$Res> {
  __$$TvSeriesPageDtoImplCopyWithImpl(
      _$TvSeriesPageDtoImpl _value, $Res Function(_$TvSeriesPageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$TvSeriesPageDtoImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TvSeriesDto>,
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
class _$TvSeriesPageDtoImpl implements _TvSeriesPageDto {
  const _$TvSeriesPageDtoImpl(
      {required this.page,
      required final List<TvSeriesDto> results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$TvSeriesPageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesPageDtoImplFromJson(json);

  @override
  final int page;
  final List<TvSeriesDto> _results;
  @override
  List<TvSeriesDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'TvSeriesPageDto(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesPageDtoImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesPageDtoImplCopyWith<_$TvSeriesPageDtoImpl> get copyWith =>
      __$$TvSeriesPageDtoImplCopyWithImpl<_$TvSeriesPageDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesPageDtoImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesPageDto implements TvSeriesPageDto {
  const factory _TvSeriesPageDto(
          {required final int page,
          required final List<TvSeriesDto> results,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$TvSeriesPageDtoImpl;

  factory _TvSeriesPageDto.fromJson(Map<String, dynamic> json) =
      _$TvSeriesPageDtoImpl.fromJson;

  @override
  int get page;
  @override
  List<TvSeriesDto> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesPageDtoImplCopyWith<_$TvSeriesPageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
