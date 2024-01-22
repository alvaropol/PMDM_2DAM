import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/screens/movies_screen.dart';
import 'package:flutter_application_tmdb_people_and_movies/screens/people_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    PeopleScreen(),
    MoviesScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TheMovieDB Application'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
        selectedItemColor: const Color.fromARGB(255, 0, 26, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}
