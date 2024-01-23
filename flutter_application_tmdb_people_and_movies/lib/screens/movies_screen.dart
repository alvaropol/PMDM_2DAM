import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/movies/results.dart';
import 'package:flutter_application_tmdb_people_and_movies/widgets/movie_item_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MoviesScreen extends StatefulWidget {
  final List<Results> movieList;
  const MoviesScreen({super.key, required this.movieList});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadResponse();
  }

  Future<void> _loadResponse() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: _isLoading,
      child: ListView.builder(
        itemCount: widget.movieList.length,
        itemBuilder: (context, index) {
          return MovieItem(movie: widget.movieList[index]);
        },
      ),
    );
  }
}
