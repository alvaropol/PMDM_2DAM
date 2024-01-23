import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/movies/results.dart';

class MovieItem extends StatelessWidget {
  final Results movie;
  const MovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
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
        ),
      ),
    );
  }
}
