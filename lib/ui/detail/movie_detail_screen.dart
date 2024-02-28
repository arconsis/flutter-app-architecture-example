import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/repos/model/movie_detail.dart';
import 'package:flutter_architecture/ui/detail/bloc/movie_detail_cubit.dart';
import 'package:flutter_architecture/ui/detail/bloc/movie_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieDetailScreen extends StatelessWidget {
  final int movieId;

  const MovieDetailScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieDetailCubit>(
      create: (context) => MovieDetailCubit.create(movieId),
      child: const _MovieDetailScreen(),
    );
  }
}

class _MovieDetailScreen extends StatelessWidget {
  const _MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailCubit, MovieDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(
            state,
            (movie) => BlocProvider.of<MovieDetailCubit>(context)
                .toggleFavorite(movie.id),
          ),
          body: _buildBody(state),
        );
      },
    );
  }

  AppBar? _buildAppBar(
    MovieDetailState state,
    Function(MovieDetail movieDetail) onFavoriteClick,
  ) {
    if (state is MovieDetailLoaded) {
      final iconData =
          state.movie.isFavorite ? Icons.favorite : Icons.favorite_border;

      return AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(iconData),
            tooltip: 'Toggle favorite status',
            onPressed: () => onFavoriteClick(state.movie),
          ),
        ],
      );
    } else {
      return null;
    }
  }

  Widget _buildBody(MovieDetailState state) {
    switch (state) {
      case MovieDetailLoading():
        return const Center(
          child: CircularProgressIndicator(),
        );
      case MovieDetailLoaded():
        return MovieDetailLoadedContent(
          movieDetail: state.movie,
        );
      case MovieDetailError():
        return const Text("Oho");
    }
  }
}

class MovieDetailLoadedContent extends StatelessWidget {
  final MovieDetail movieDetail;

  const MovieDetailLoadedContent({super.key, required this.movieDetail});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movieDetail.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            RatingBar.builder(
              itemSize: 32,
              initialRating: movieDetail.voteAverage / 2,
              glow: false,
              ignoreGestures: true,
              allowHalfRating: true,
              unratedColor: Theme.of(context).colorScheme.primary,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, index) {
                if (movieDetail.voteAverage ~/ 2 >= index) {
                  return Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.primary,
                  );
                } else {
                  return Icon(
                    Icons.star_border_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  );
                }
              },
              onRatingUpdate: (_) {},
            ),
            Text(
                "${movieDetail.runtime} • ${movieDetail.releaseDate} • ${movieDetail.budget}"),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:
                  CachedNetworkImage(imageUrl: movieDetail.backdropPath ?? ""),
            ),
            Text(movieDetail.overview),
          ],
        ),
      ),
    );
  }
}
