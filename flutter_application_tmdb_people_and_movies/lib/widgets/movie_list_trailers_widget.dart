import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/movies/trailer_list_response/trailer_list_response.dart';
import 'package:flutter_application_tmdb_people_and_movies/widgets/movie_card_trailer.dart';

import 'package:http/http.dart' as http;

Future<TrailerListResponse> fetchTrailers(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$id/videos?api_key=433d2c486572afb242c6fe7c1ddc6771'));

  if (response.statusCode == 200) {
    return TrailerListResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class MovieTrailersListWidget extends StatefulWidget {
  final int movieId;
  const MovieTrailersListWidget({super.key, required this.movieId});

  @override
  State<MovieTrailersListWidget> createState() =>
      _MovieTrailersListWidgetState();
}

class _MovieTrailersListWidgetState extends State<MovieTrailersListWidget> {
  late Future<TrailerListResponse> futureTrailers;

  @override
  void initState() {
    super.initState();
    futureTrailers = fetchTrailers(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<TrailerListResponse>(
      future: futureTrailers,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.results!.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardVideoWidget(
                      movieTrailer: snapshot.data!.results![index]);
                },
              ));
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
