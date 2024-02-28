import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_architecture/data/db/entity/movie_detail_entity.dart';
import 'package:flutter_architecture/data/db/movie_detail_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [MovieDetailEntity])
abstract class AppDatabase extends FloorDatabase {

  MovieDetailDao get movieDetailDao;
}
