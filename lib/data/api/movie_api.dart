import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/api/dto/movie_detail_dto.dart';
import 'package:flutter_architecture/data/api/dto/popular_movies_page_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3/")
abstract class MovieApi {
  factory MovieApi(Dio dio, {String baseUrl}) = _MovieApi;

  @GET("/movie/popular")
  Future<PopularMoviesPageDto> getPopularMovies(@Query("page") int page);

  @GET("/movie/{id}")
  Future<MovieDetailDto> getMovieDetails(@Path("id") String movieId);
}
