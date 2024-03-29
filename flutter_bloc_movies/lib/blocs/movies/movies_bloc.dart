import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_movies/models/movie_popular_response/movie_popular_response.dart';
import 'package:flutter_bloc_movies/repositories/movies/movie_repository.dart';
import 'package:meta/meta.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MovieRepository _movieRepository;

  MoviesBloc(this._movieRepository) : super(MoviesInitial()) {
    on<MovieFetchList>(_onMovieFetchList);
  }

  Future<void> _onMovieFetchList(
      MovieFetchList event, Emitter<MoviesState> emit) async {
    try {
      final movieList = await _movieRepository.fetchMovies(event.type);
      emit(MovieFetchSuccess(movieList));
    } on Exception catch (e) {
      emit(MovieFetchError(e.toString()));
    }
  }
}
