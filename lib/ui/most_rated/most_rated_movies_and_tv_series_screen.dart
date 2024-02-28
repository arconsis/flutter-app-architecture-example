import 'package:flutter/material.dart';
import 'package:flutter_architecture/data/repos/model/movie.dart';
import 'package:flutter_architecture/data/repos/model/tv_series.dart';
import 'package:flutter_architecture/ui/common/grid_item.dart';
import 'package:flutter_architecture/ui/most_rated/bloc/most_rated_movies_and_tv_series_cubit.dart';
import 'package:flutter_architecture/ui/most_rated/bloc/most_rated_movies_and_tv_series_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MostRatedMoviesAndTvSeriesScreen extends StatelessWidget {
  const MostRatedMoviesAndTvSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MostRatedMoviesAndTvSeriesCubit>(
      create: (context) => MostRatedMoviesAndTvSeriesCubit.create(),
      child: Scaffold(
        appBar: AppBar(
          bottom: AppBar(
            title: const Text("Most rated movies and tv series"),
          ),
        ),
        body: const _MostRatedMoviesAndTvSeriesScreen(),
      ),
    );
  }
}

class _MostRatedMoviesAndTvSeriesScreen extends StatelessWidget {
  const _MostRatedMoviesAndTvSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MostRatedMoviesAndTvSeriesCubit,
        MostRatedMoviesAndTvSeriesState>(builder: (context, state) {
      switch (state) {
        case MostRatedMoviesAndTvSeriesLoading():
          return const Center(
            child: CircularProgressIndicator(),
          );
        case MostRatedMoviesAndTvSeriesLoaded():
          return MostRatedMoviesAndTvSeriesContent(
            movies: state.mostRated.movies,
            tvSeries: state.mostRated.tvSeries,
          );
        case MostRatedMoviesAndTvSeriesError():
          return const Center(
              child: Text("Oho"));
      }
    });
  }
}

class MostRatedMoviesAndTvSeriesContent extends StatelessWidget {
  final List<Movie> movies;
  final List<TvSeries> tvSeries;

  const MostRatedMoviesAndTvSeriesContent({
    super.key,
    required this.movies,
    required this.tvSeries,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Movies",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: movies
                    .map((e) => SizedBox(
                        width: 130,
                        child: GridItem(
                          imageUrl: e.posterPath ?? "",
                          runtime: e.releaseDate ?? "-",
                          title: e.title,
                        )))
                    .toList(),
              ),
            ),
            Text("TV-Series",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: tvSeries
                    .map((e) => SizedBox(
                          width: 130,
                          child: GridItem(
                              imageUrl: e.posterPath ?? "",
                              runtime: e.firstAirDate ?? "-",
                              title: e.name ?? ""),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
