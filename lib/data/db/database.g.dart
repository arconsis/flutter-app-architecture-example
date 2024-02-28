// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  MovieDetailDao? _movieDetailDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `movie_detail` (`adult` INTEGER NOT NULL, `backdropPath` TEXT, `budget` INTEGER, `homepage` TEXT, `id` INTEGER NOT NULL, `isFavorite` INTEGER NOT NULL, `originalLanguage` TEXT NOT NULL, `originalTitle` TEXT NOT NULL, `overview` TEXT NOT NULL, `popularity` REAL NOT NULL, `posterPath` TEXT, `releaseDate` TEXT, `revenue` INTEGER NOT NULL, `runtime` INTEGER, `title` TEXT NOT NULL, `video` INTEGER NOT NULL, `voteAverage` REAL NOT NULL, `voteCount` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  MovieDetailDao get movieDetailDao {
    return _movieDetailDaoInstance ??=
        _$MovieDetailDao(database, changeListener);
  }
}

class _$MovieDetailDao extends MovieDetailDao {
  _$MovieDetailDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _movieDetailEntityInsertionAdapter = InsertionAdapter(
            database,
            'movie_detail',
            (MovieDetailEntity item) => <String, Object?>{
                  'adult': item.adult ? 1 : 0,
                  'backdropPath': item.backdropPath,
                  'budget': item.budget,
                  'homepage': item.homepage,
                  'id': item.id,
                  'isFavorite': item.isFavorite ? 1 : 0,
                  'originalLanguage': item.originalLanguage,
                  'originalTitle': item.originalTitle,
                  'overview': item.overview,
                  'popularity': item.popularity,
                  'posterPath': item.posterPath,
                  'releaseDate': item.releaseDate,
                  'revenue': item.revenue,
                  'runtime': item.runtime,
                  'title': item.title,
                  'video': item.video ? 1 : 0,
                  'voteAverage': item.voteAverage,
                  'voteCount': item.voteCount
                },
            changeListener),
        _movieDetailEntityUpdateAdapter = UpdateAdapter(
            database,
            'movie_detail',
            ['id'],
            (MovieDetailEntity item) => <String, Object?>{
                  'adult': item.adult ? 1 : 0,
                  'backdropPath': item.backdropPath,
                  'budget': item.budget,
                  'homepage': item.homepage,
                  'id': item.id,
                  'isFavorite': item.isFavorite ? 1 : 0,
                  'originalLanguage': item.originalLanguage,
                  'originalTitle': item.originalTitle,
                  'overview': item.overview,
                  'popularity': item.popularity,
                  'posterPath': item.posterPath,
                  'releaseDate': item.releaseDate,
                  'revenue': item.revenue,
                  'runtime': item.runtime,
                  'title': item.title,
                  'video': item.video ? 1 : 0,
                  'voteAverage': item.voteAverage,
                  'voteCount': item.voteCount
                },
            changeListener),
        _movieDetailEntityDeletionAdapter = DeletionAdapter(
            database,
            'movie_detail',
            ['id'],
            (MovieDetailEntity item) => <String, Object?>{
                  'adult': item.adult ? 1 : 0,
                  'backdropPath': item.backdropPath,
                  'budget': item.budget,
                  'homepage': item.homepage,
                  'id': item.id,
                  'isFavorite': item.isFavorite ? 1 : 0,
                  'originalLanguage': item.originalLanguage,
                  'originalTitle': item.originalTitle,
                  'overview': item.overview,
                  'popularity': item.popularity,
                  'posterPath': item.posterPath,
                  'releaseDate': item.releaseDate,
                  'revenue': item.revenue,
                  'runtime': item.runtime,
                  'title': item.title,
                  'video': item.video ? 1 : 0,
                  'voteAverage': item.voteAverage,
                  'voteCount': item.voteCount
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MovieDetailEntity> _movieDetailEntityInsertionAdapter;

  final UpdateAdapter<MovieDetailEntity> _movieDetailEntityUpdateAdapter;

  final DeletionAdapter<MovieDetailEntity> _movieDetailEntityDeletionAdapter;

  @override
  Stream<List<MovieDetailEntity>> findAllMovieDetails() {
    return _queryAdapter.queryListStream('SELECT name FROM movie_detail',
        mapper: (Map<String, Object?> row) => MovieDetailEntity(
            budget: row['budget'] as int?,
            homepage: row['homepage'] as String?,
            revenue: row['revenue'] as int,
            runtime: row['runtime'] as int?,
            adult: (row['adult'] as int) != 0,
            backdropPath: row['backdropPath'] as String?,
            id: row['id'] as int,
            isFavorite: (row['isFavorite'] as int) != 0,
            originalLanguage: row['originalLanguage'] as String,
            originalTitle: row['originalTitle'] as String,
            overview: row['overview'] as String,
            popularity: row['popularity'] as double,
            posterPath: row['posterPath'] as String?,
            releaseDate: row['releaseDate'] as String?,
            title: row['title'] as String,
            video: (row['video'] as int) != 0,
            voteAverage: row['voteAverage'] as double,
            voteCount: row['voteCount'] as int),
        queryableName: 'movie_detail',
        isView: false);
  }

  @override
  Future<MovieDetailEntity?> findMovieDetailById(int id) async {
    return _queryAdapter.query('SELECT * FROM movie_detail WHERE id = ?1',
        mapper: (Map<String, Object?> row) => MovieDetailEntity(
            budget: row['budget'] as int?,
            homepage: row['homepage'] as String?,
            revenue: row['revenue'] as int,
            runtime: row['runtime'] as int?,
            adult: (row['adult'] as int) != 0,
            backdropPath: row['backdropPath'] as String?,
            id: row['id'] as int,
            isFavorite: (row['isFavorite'] as int) != 0,
            originalLanguage: row['originalLanguage'] as String,
            originalTitle: row['originalTitle'] as String,
            overview: row['overview'] as String,
            popularity: row['popularity'] as double,
            posterPath: row['posterPath'] as String?,
            releaseDate: row['releaseDate'] as String?,
            title: row['title'] as String,
            video: (row['video'] as int) != 0,
            voteAverage: row['voteAverage'] as double,
            voteCount: row['voteCount'] as int),
        arguments: [id]);
  }

  @override
  Stream<MovieDetailEntity?> findMovieDetailByIdStream(int id) {
    return _queryAdapter.queryStream('SELECT * FROM movie_detail WHERE id = ?1',
        mapper: (Map<String, Object?> row) => MovieDetailEntity(
            budget: row['budget'] as int?,
            homepage: row['homepage'] as String?,
            revenue: row['revenue'] as int,
            runtime: row['runtime'] as int?,
            adult: (row['adult'] as int) != 0,
            backdropPath: row['backdropPath'] as String?,
            id: row['id'] as int,
            isFavorite: (row['isFavorite'] as int) != 0,
            originalLanguage: row['originalLanguage'] as String,
            originalTitle: row['originalTitle'] as String,
            overview: row['overview'] as String,
            popularity: row['popularity'] as double,
            posterPath: row['posterPath'] as String?,
            releaseDate: row['releaseDate'] as String?,
            title: row['title'] as String,
            video: (row['video'] as int) != 0,
            voteAverage: row['voteAverage'] as double,
            voteCount: row['voteCount'] as int),
        arguments: [id],
        queryableName: 'movie_detail',
        isView: false);
  }

  @override
  Stream<List<MovieDetailEntity>> getMovieDetailFavorites() {
    return _queryAdapter.queryListStream(
        'SELECT * FROM movie_detail WHERE isFavorite = true',
        mapper: (Map<String, Object?> row) => MovieDetailEntity(
            budget: row['budget'] as int?,
            homepage: row['homepage'] as String?,
            revenue: row['revenue'] as int,
            runtime: row['runtime'] as int?,
            adult: (row['adult'] as int) != 0,
            backdropPath: row['backdropPath'] as String?,
            id: row['id'] as int,
            isFavorite: (row['isFavorite'] as int) != 0,
            originalLanguage: row['originalLanguage'] as String,
            originalTitle: row['originalTitle'] as String,
            overview: row['overview'] as String,
            popularity: row['popularity'] as double,
            posterPath: row['posterPath'] as String?,
            releaseDate: row['releaseDate'] as String?,
            title: row['title'] as String,
            video: (row['video'] as int) != 0,
            voteAverage: row['voteAverage'] as double,
            voteCount: row['voteCount'] as int),
        queryableName: 'movie_detail',
        isView: false);
  }

  @override
  Future<void> toggleFavorite(
    int id,
    bool favorite,
  ) async {
    await _queryAdapter.queryNoReturn(
        'UPDATE movie_detail SET isFavorite = ?2 WHERE id = ?1',
        arguments: [id, favorite ? 1 : 0]);
  }

  @override
  Future<void> insertMovieDetail(MovieDetailEntity movieEntity) async {
    await _movieDetailEntityInsertionAdapter.insert(
        movieEntity, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateMovie(MovieDetailEntity movieEntity) async {
    await _movieDetailEntityUpdateAdapter.update(
        movieEntity, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteMovie(MovieDetailEntity movieEntity) async {
    await _movieDetailEntityDeletionAdapter.delete(movieEntity);
  }
}
