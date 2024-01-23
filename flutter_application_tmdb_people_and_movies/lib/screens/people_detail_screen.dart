import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/widgets/people_detail_item_widget.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_tmdb_people_and_movies/models/people/people_detail_response.dart';

class PeopleDetailScreen extends StatefulWidget {
  final int actorId;
  const PeopleDetailScreen({super.key, required this.actorId});

  @override
  State<PeopleDetailScreen> createState() => _PeopleDetailScreenState();
}

class _PeopleDetailScreenState extends State<PeopleDetailScreen> {
  late Future<PeopleDetailResponse> actor;

  Future<PeopleDetailResponse> fetchPeopleDetail() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/person/${widget.actorId}?api_key=b415c3bcbd59bc1b962dd0ac536ee99e'));

    if (response.statusCode == 200) {
      return PeopleDetailResponse.fromJson(response.body);
    } else {
      throw Exception('Failed to load actor detail');
    }
  }

  @override
  void initState() {
    super.initState();
    actor = fetchPeopleDetail();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PeopleDetailResponse>(
        future: actor,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PeopleDetailItemWidget(id: widget.actorId);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
