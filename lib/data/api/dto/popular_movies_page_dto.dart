import 'package:flutter_architecture/data/api/dto/movie_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_page_dto.freezed.dart';

part 'popular_movies_page_dto.g.dart';

@freezed
class PopularMoviesPageDto with _$PopularMoviesPageDto {
  const factory PopularMoviesPageDto({
    required int page,
    @JsonKey(name: 'results') required List<MovieDto> movieDtoList,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _PopularMoviesPageDto;

  factory PopularMoviesPageDto.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesPageDtoFromJson(json);
}
