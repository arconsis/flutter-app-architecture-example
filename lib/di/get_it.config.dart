// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_architecture/config/configurator.dart' as _i4;
import 'package:flutter_architecture/data/api/api_module.dart' as _i14;
import 'package:flutter_architecture/data/api/movie_api.dart' as _i6;
import 'package:flutter_architecture/data/api/tv_series_api.dart' as _i10;
import 'package:flutter_architecture/data/db/database.dart' as _i3;
import 'package:flutter_architecture/data/db/db_module.dart' as _i13;
import 'package:flutter_architecture/data/db/movie_detail_dao.dart' as _i7;
import 'package:flutter_architecture/data/repos/movie_detail_repository.dart'
    as _i8;
import 'package:flutter_architecture/data/repos/movie_repository.dart' as _i9;
import 'package:flutter_architecture/data/repos/tv_series_repository.dart'
    as _i11;
import 'package:flutter_architecture/domain/get_most_rated_movies_and_tv_series_usecase.dart'
    as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dBModule = _$DBModule();
    final apiModule = _$ApiModule();
    await gh.singletonAsync<_i3.AppDatabase>(
      () => dBModule.provideDatabase(),
      preResolve: true,
    );
    await gh.singletonAsync<_i4.Configurator>(
      () => _i4.Configurator.init(),
      preResolve: true,
    );
    gh.factory<_i5.Dio>(() => apiModule.dio(gh<_i4.Configurator>()));
    gh.singleton<_i6.MovieApi>(apiModule.movieApi(gh<_i5.Dio>()));
    gh.singleton<_i7.MovieDetailDao>(
        dBModule.provideMovieDetailDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i8.MovieDetailRepository>(_i8.MovieDetailRepository(
      gh<_i6.MovieApi>(),
      gh<_i7.MovieDetailDao>(),
    ));
    gh.singleton<_i9.MovieRepository>(_i9.MovieRepository(gh<_i6.MovieApi>()));
    gh.singleton<_i10.TvSeriesApi>(apiModule.tvSeriesApi(gh<_i5.Dio>()));
    gh.singleton<_i11.TvSeriesRepository>(
        _i11.TvSeriesRepository(gh<_i10.TvSeriesApi>()));
    gh.factory<_i12.GetMostRatedMoviesAndTvSeriesUseCase>(
        () => _i12.GetMostRatedMoviesAndTvSeriesUseCase(
              gh<_i11.TvSeriesRepository>(),
              gh<_i9.MovieRepository>(),
            ));
    return this;
  }
}

class _$DBModule extends _i13.DBModule {}

class _$ApiModule extends _i14.ApiModule {}
