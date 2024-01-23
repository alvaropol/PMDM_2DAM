import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/widgets/people_detail_widget.dart';

class PeopleDetailScreen extends StatelessWidget {
  const PeopleDetailScreen({super.key, required this.name, required this.id});
  final String name;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail of $name'),
      ),
      body: PeopleDetailsWidget(id: id),
    );
  }
}
