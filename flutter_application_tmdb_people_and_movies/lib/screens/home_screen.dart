import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/movies/movie_list_response.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/people/people_list_response.dart';
import 'package:flutter_application_tmdb_people_and_movies/screens/movies_screen.dart';
import 'package:flutter_application_tmdb_people_and_movies/screens/people_screen.dart';

Future<PersonList> fetchPeopleList() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/popular?api_key=b415c3bcbd59bc1b962dd0ac536ee99e'));

  if (response.statusCode == 200) {
    return PersonList.fromJson(response.body);
  } else {
    throw Exception('Failed to load people list');
  }
}

Future<MovieList> fetchMoviesList() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=b415c3bcbd59bc1b962dd0ac536ee99e'));

  if (response.statusCode == 200) {
    return MovieList.fromJson(response.body);
  } else {
    throw Exception('Failed to load the movies list');
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<PersonList> peopleList;
  late Future<MovieList> movieList;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    peopleList = fetchPeopleList();
    movieList = fetchMoviesList();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 216, 216),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 170, 161, 161),
        title: const Text('TheMovieDB Application'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          FutureBuilder<PersonList>(
              future: peopleList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return PeopleScreen(peopleList: snapshot.data!.results!);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              }),
          FutureBuilder<MovieList>(
              future: movieList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return MoviesScreen(movieList: snapshot.data!.results!);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.people, size: 40), label: 'Actors'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.movie,
                size: 40,
              ),
              label: 'Movies'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 16, 51, 43),
        onTap: _onItemTapped,
      ),
    );
  }
}
