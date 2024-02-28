import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/api/dto/movie_detail_dto.dart';
import 'package:flutter_architecture/data/api/dto/popular_movies_page_dto.dart';
import 'package:flutter_architecture/data/api/dto/tv_series_page_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'tv_series_api.g.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3/")
abstract class TvSeriesApi {
  factory TvSeriesApi(Dio dio, {String baseUrl}) = _TvSeriesApi;

  @GET("tv/top_rated")
  Future<TvSeriesPageDto> getMostRatedTvSeries(@Query("page") int page);

}
