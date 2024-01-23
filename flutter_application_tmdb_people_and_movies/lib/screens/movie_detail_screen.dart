import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/widgets/movie_detail.widget.dart';

class MovieDetailScreen extends StatelessWidget {
  final int movieId;
  final String title;
  const MovieDetailScreen(
      {super.key, required this.movieId, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail of $title'),
      ),
      body: MovieDetailsWidget(id: movieId),
    );
  }
}
