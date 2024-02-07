import 'package:flutter/material.dart';
import 'package:flutter_bloc_movies/blocs/movies/movies_bloc.dart';
import 'package:flutter_bloc_movies/repositories/movies/movie_repository.dart';
import 'package:flutter_bloc_movies/repositories/movies/movie_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  late MovieRepository movieRepository;

  @override
  void initState() {
    super.initState();
    movieRepository = MovieRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MoviesBloc(movieRepository),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Movies'),
          ),
          //body: _movieList(),
        ));
  }
}
