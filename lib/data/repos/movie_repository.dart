import 'package:flutter_architecture/data/api/movie_api.dart';
import 'package:flutter_architecture/data/dto_mapper.dart';
import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:flutter_architecture/data/repos/result.dart';
import 'package:injectable/injectable.dart';

@singleton
class MovieRepository {
  final MovieApi _movieApi;

  MovieRepository(this._movieApi);

  Future<Result<List<Movie>>> getPopularMovies(int page) async {
    try {
      final body = await _movieApi.getPopularMovies(page);
      return ResultSuccess(body.movieDtoList.toMovies());
    } catch (e, s) {
      return ResultError();
    }
  }
}
