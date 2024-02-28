import 'package:flutter_architecture/constants.dart';
import 'package:flutter_architecture/data/api/dto/movie_detail_dto.dart';
import 'package:flutter_architecture/data/api/dto/movie_dto.dart';
import 'package:flutter_architecture/data/api/dto/tv_series_dto.dart';
import 'package:flutter_architecture/data/db/entity/movie_detail_entity.dart';
import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:flutter_architecture/data/repos/model/tv_series.dart';

extension MovieDtoMapping on MovieDto {
  Movie toMovie() {
    return Movie(
      id: id,
      adult: adult,
      backdropPath: "${Constants.IMAGE_BASE_URL}/$backdropPath",
      genreIds: genreIds,
      isFavorite: false,
      originalLanguage: originalLanguage,
      originalTitle: originalLanguage,
      overview: overview,
      popularity: popularity,
      posterPath: "${Constants.IMAGE_BASE_URL}/$posterPath",
      releaseDate: releaseDate.toReadableReleaseDate(),
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}

extension MovieListDtoMapping on List<MovieDto> {
  List<Movie> toMovies() {
    return map((movieDto) => movieDto.toMovie()).toList();
  }
}

extension MovieDetailDtoMapping on MovieDetailDto {
  MovieDetailEntity toEntity() {
    return MovieDetailEntity(
      id: id,
      adult: adult,
      backdropPath: "${Constants.IMAGE_BASE_URL}/$backdropPath",
      isFavorite: false,
      originalLanguage: originalLanguage,
      originalTitle: originalLanguage,
      overview: overview,
      popularity: popularity,
      posterPath: "${Constants.IMAGE_BASE_URL}/$posterPath",
      releaseDate: releaseDate.toReadableReleaseDate(),
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
      budget: budget,
      homepage: homepage,
      revenue: revenue,
      runtime: runtime,
    );
  }
}

extension TvSeriesDtoMapping on TvSeriesDto {
  TvSeries toTvSeries() {
    return TvSeries(
      id: id,
      firstAirDate: firstAirDate,
      name: name,
      backdropPath: "${Constants.IMAGE_BASE_URL}/$backdropPath",
      overview: overview,
      popularity: popularity,
      posterPath: "${Constants.IMAGE_BASE_URL}/$posterPath",
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}

extension TvSeriesListDtoMapping on List<TvSeriesDto> {
  List<TvSeries> toTvSeries() {
    return map((tvSeriesDto) => tvSeriesDto.toTvSeries()).toList();
  }
}

extension ReadableReleaseDate on String? {
  String toReadableReleaseDate() {
    if(this == null) {
      return "-";
    } else {
      return this!.split("-").reversed.join(".");
    }
  }
}