import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:flutter_architecture/ui/common/grid_item.dart';
import 'package:flutter_architecture/ui/common/infinite_grid_view.dart';
import 'package:flutter_architecture/ui/detail/movie_detail_screen.dart';
import 'package:flutter_architecture/ui/popular/bloc/popular_movies_cubit.dart';
import 'package:flutter_architecture/ui/popular/bloc/popular_movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularMoviesScreen extends StatelessWidget {
  const PopularMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PopularMoviesCubit>(
      create: (context) => PopularMoviesCubit.create(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Popular movies'),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 0;
          },
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
        ),
        body: const _PopularMoviesScreen(),
      ),
    );
  }
}

class _PopularMoviesScreen extends StatelessWidget {
  const _PopularMoviesScreen();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesCubit, PopularMoviesState>(
        builder: (context, state) {
      switch (state) {
        case PopularMoviesLoading():
          return const Center(
            child: CircularProgressIndicator(),
          );
        case PopularMoviesLoaded():
          return PopularMovieContent(
            movies: state.movies,
            onMovieClick: (movieId) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MovieDetailScreen(movieId: movieId),
                ),
              );
            },
            onListEndReached: () =>
                BlocProvider.of<PopularMoviesCubit>(context)
                    .loadPopularMovies(),
          );
        case PopularMoviesError():
          return const Text("Oho");
      }
    });
  }
}

class PopularMovieContent extends StatelessWidget {
  final List<Movie> movies;
  final Function(int movieId) onMovieClick;
  final Function() onListEndReached;

  const PopularMovieContent({
    super.key,
    required this.movies,
    required this.onMovieClick,
    required this.onListEndReached,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: InfiniteGridView(
              itemCount: movies.length,
              onEndReached: onListEndReached,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return GridItem(
                  imageUrl: movie.posterPath ?? "",
                  runtime: movie.releaseDate ?? "-",
                  title: movie.title,
                  onClick: () => onMovieClick(movie.id),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
