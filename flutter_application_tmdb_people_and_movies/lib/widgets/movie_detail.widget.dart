import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/movies/movie_detail_response/movie_detail_response.dart';
import 'package:flutter_application_tmdb_people_and_movies/widgets/movie_detail_item.dart';
import 'package:http/http.dart' as http;
import 'package:skeletonizer/skeletonizer.dart';

Future<MovieDetailResponse> fetchMovieDetails(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$id?api_key=b415c3bcbd59bc1b962dd0ac536ee99e'));
  if (response.statusCode == 200) {
    final toReturn = MovieDetailResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class MovieDetailsWidget extends StatefulWidget {
  const MovieDetailsWidget({super.key, required this.id});
  final int id;
  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  late Future<MovieDetailResponse> movieDetailResponse;

  @override
  void initState() {
    super.initState();
    movieDetailResponse = fetchMovieDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder<MovieDetailResponse>(
        future: movieDetailResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Skeletonizer(
                enabled: false, child: MovieDetailItem(movie: snapshot.data!));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
