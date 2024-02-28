import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/favorite/favorite_movies_screen.dart';
import 'package:flutter_architecture/ui/most_rated/most_rated_movies_and_tv_series_screen.dart';
import 'package:flutter_architecture/ui/popular/popular_movies_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<MainScreen> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: _currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.trending_up),
            label: 'Popular',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          NavigationDestination(
            icon: Icon(Icons.how_to_vote),
            label: 'Most voted',
          ),
        ],
      ),
      body: <Widget>[
        const PopularMoviesScreen(),
        const FavoriteMoviesScreen(),
        const MostRatedMoviesAndTvSeriesScreen(),
      ][_currentPageIndex],
    );
  }
}
