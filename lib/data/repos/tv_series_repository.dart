import 'package:flutter_architecture/data/api/movie_api.dart';
import 'package:flutter_architecture/data/api/tv_series_api.dart';
import 'package:flutter_architecture/data/dto_mapper.dart';
import 'package:flutter_architecture/data/entity_mapper.dart';
import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:flutter_architecture/data/repos/model/tv_series.dart';
import 'package:flutter_architecture/data/repos/result.dart';
import 'package:injectable/injectable.dart';

@singleton
class TvSeriesRepository {
  final TvSeriesApi _tvSeriesApi;

  TvSeriesRepository(this._tvSeriesApi);

  Future<Result<List<TvSeries>>> getPopularTvSeries(int page) async {
    try {
      final result = await _tvSeriesApi.getMostRatedTvSeries(page);
      return ResultSuccess(result.results.toTvSeries());
    } catch (e, s) {
      return ResultError();
    }
  }
}
