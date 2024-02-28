import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/repos/model/movie_detail.dart';
import 'package:flutter_architecture/ui/common/grid_item.dart';
import 'package:flutter_architecture/ui/favorite/bloc/favorite_movies_cubit.dart';
import 'package:flutter_architecture/ui/favorite/bloc/favorite_movies_state.dart';
import 'package:flutter_architecture/ui/common/infinite_grid_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteMoviesScreen extends StatelessWidget {
  const FavoriteMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteMoviesCubit>(
      create: (context) => FavoriteMoviesCubit.create(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My favorites'),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 0;
          },
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
        ),
        body: const _FavoriteMoviesScreen(),
      ),
    );
  }
}

class _FavoriteMoviesScreen extends StatelessWidget {
  const _FavoriteMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteMoviesCubit, FavoriteMoviesState>(
      builder: (context, state) {
        switch (state) {
          case FavoriteMoviesLoading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          case FavoriteMoviesLoaded():
            return _FavoriteMoviesContent(
              favorites: state.favorites,
              onLongPress: (favorite) =>
                  BlocProvider.of<FavoriteMoviesCubit>(context)
                      .removeFavorite(favorite),
            );
          case FavoriteMoviesError():
            return const Text("Oho");
        }
      },
    );
  }
}

class _FavoriteMoviesContent extends StatelessWidget {
  final List<MovieDetail> favorites;
  final Function(MovieDetail) onLongPress;

  const _FavoriteMoviesContent({
    required this.favorites,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: InfiniteGridView(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final favorite = favorites[index];
                return GridItem(
                  imageUrl: favorite.posterPath ?? "",
                  runtime: favorite.releaseDate ?? "-",
                  title: favorite.title,
                  onLongPress: () => onLongPress(favorite),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
