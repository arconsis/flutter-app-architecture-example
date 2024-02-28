import 'package:dio/dio.dart';
import 'package:flutter_architecture/config/configurator.dart';
import 'package:flutter_architecture/data/api/movie_api.dart';
import 'package:flutter_architecture/data/api/tv_series_api.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  Dio dio(Configurator configurator) {
    final dio = Dio();
    final baseOptions = BaseOptions(queryParameters: {
      "api_key": configurator.config.apiKey,
    });
    dio.options = baseOptions;
    return dio;
  }

  @singleton
  MovieApi movieApi(Dio dio) => MovieApi(dio);

  @singleton
  TvSeriesApi tvSeriesApi(Dio dio) => TvSeriesApi(dio);
}
