import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/movies/movie_detail_response/movie_detail_response.dart';

class MovieDetailItem extends StatelessWidget {
  final MovieDetailResponse movie;
  const MovieDetailItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: NetworkImage(
            'https://image.tmdb.org/t/p/w500/${movie.backdropPath!}',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.black.withOpacity(0.6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                children: [
                  ListTile(
                    title: Text(
                      movie.title!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Description: ${movie.overview}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(
                    'Runtime of the movie: ${movie.runtime} min',
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Revenue: ${movie.revenue} USD',
                    style: const TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Release date -> ${movie.releaseDate}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
