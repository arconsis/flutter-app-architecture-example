import 'package:flutter_architecture/data/api/movie_api.dart';
import 'package:flutter_architecture/data/db/movie_detail_dao.dart';
import 'package:flutter_architecture/data/dto_mapper.dart';
import 'package:flutter_architecture/data/entity_mapper.dart';
import 'package:flutter_architecture/data/repos/model/movie_detail.dart';
import 'package:flutter_architecture/data/repos/result.dart';
import 'package:injectable/injectable.dart';

@singleton
class MovieDetailRepository {
  final MovieApi _movieApi;
  final MovieDetailDao _movieDetailDao;

  MovieDetailRepository(this._movieApi, this._movieDetailDao);

  Stream<List<MovieDetail>> getAllFavorites() {
    return _movieDetailDao
        .getMovieDetailFavorites()
        .asBroadcastStream()
        .map((entities) => entities.toMovieDetailList());
  }

  Future<Result<Stream<MovieDetail?>>> getMovieDetails(int movieId) async {
    try {
      final entity = await _movieDetailDao.findMovieDetailById(movieId);
      if (entity == null) {
        final dto = await _movieApi.getMovieDetails(movieId.toString());
        _movieDetailDao.insertMovieDetail(dto.toEntity());
      }
      final stream = _movieDetailDao
          .findMovieDetailByIdStream(movieId)
          .map((entity) => entity?.toMovieDetail());
      return ResultSuccess(stream);
    } catch (e, s) {
      return ResultError();
    }
  }

  Future<void> toggleFavorite(int movieId) async {
    final entity = await _movieDetailDao.findMovieDetailById(movieId);
    if (entity != null) {
      _movieDetailDao.toggleFavorite(movieId, !entity.isFavorite);
    }
  }
}
