import 'package:flutter_architecture/data/repos/model/movie_detail.dart';
import 'package:flutter_architecture/data/repos/movie_detail_repository.dart';
import 'package:flutter_architecture/di/get_it.dart';
import 'package:flutter_architecture/ui/favorite/bloc/favorite_movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteMoviesCubit extends Cubit<FavoriteMoviesState> {
  final MovieDetailRepository _movieDetailRepository;

  factory FavoriteMoviesCubit.create() => FavoriteMoviesCubit(
        get<MovieDetailRepository>(),
      );

  FavoriteMoviesCubit(this._movieDetailRepository)
      : super(const FavoriteMoviesLoading()) {
    _movieDetailRepository.getAllFavorites().listen(_loadFavoriteMovies);
  }

  Future<void> _loadFavoriteMovies(List<MovieDetail> favorites) async {
    emit(FavoriteMoviesLoaded(favorites: favorites));
  }

  void removeFavorite(MovieDetail favorite) async {
    await _movieDetailRepository.toggleFavorite(favorite.id);
  }
}
