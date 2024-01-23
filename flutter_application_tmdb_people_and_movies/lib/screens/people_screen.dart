import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/people/result.dart';
import 'package:flutter_application_tmdb_people_and_movies/widgets/people_item_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PeopleScreen extends StatefulWidget {
  final List<Result> peopleList;
  const PeopleScreen({super.key, required this.peopleList});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadResponse();
  }

  Future<void> _loadResponse() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: _isLoading,
      child: ListView.builder(
        itemCount: widget.peopleList.length,
        itemBuilder: (context, index) {
          return PeopleItem(actor: widget.peopleList[index]);
        },
      ),
    );
  }
}
