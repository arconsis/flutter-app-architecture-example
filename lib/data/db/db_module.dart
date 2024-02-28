import 'package:flutter_architecture/data/db/database.dart';
import 'package:flutter_architecture/data/db/movie_detail_dao.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DBModule {
  @preResolve
  @singleton
  Future<AppDatabase> provideDatabase() async {
    return $FloorAppDatabase.databaseBuilder('app_database.db').build();
  }

  @singleton
  MovieDetailDao provideMovieDetailDao(AppDatabase appDatabase) {
    return appDatabase.movieDetailDao;
  }
}
