import 'package:floor/floor.dart';
import 'package:flutter_architecture/data/db/entity/movie_detail_entity.dart';

@dao
abstract class MovieDetailDao {
  @Query('SELECT name FROM movie_detail')
  Stream<List<MovieDetailEntity>> findAllMovieDetails();

  @Query('SELECT * FROM movie_detail WHERE id = :id')
  Future<MovieDetailEntity?> findMovieDetailById(int id);

  @Query('SELECT * FROM movie_detail WHERE id = :id')
  Stream<MovieDetailEntity?> findMovieDetailByIdStream(int id);

  @Query('SELECT * FROM movie_detail WHERE isFavorite = true')
  Stream<List<MovieDetailEntity>> getMovieDetailFavorites();

  @Query('UPDATE movie_detail SET isFavorite = :favorite WHERE id = :id')
  Future<void> toggleFavorite(int id, bool favorite);

  @insert
  Future<void> insertMovieDetail(MovieDetailEntity movieEntity);

  @update
  Future<void> updateMovie(MovieDetailEntity movieEntity);

  @delete
  Future<void> deleteMovie(MovieDetailEntity movieEntity);
}
