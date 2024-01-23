import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/people/people_detail_response.dart';
import 'package:flutter_application_tmdb_people_and_movies/widgets/people_detail_item.dart';
import 'package:http/http.dart' as http;
import 'package:skeletonizer/skeletonizer.dart';

Future<PeopleDetailResponse> fetchPersonDetails(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/$id?api_key=b415c3bcbd59bc1b962dd0ac536ee99e'));
  if (response.statusCode == 200) {
    final toReturn = PeopleDetailResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load people detail');
  }
}

class PeopleDetailsWidget extends StatefulWidget {
  const PeopleDetailsWidget({super.key, required this.id});
  final int id;
  @override
  State<PeopleDetailsWidget> createState() => _PeopleDetailsWidgetState();
}

class _PeopleDetailsWidgetState extends State<PeopleDetailsWidget> {
  late Future<PeopleDetailResponse> personDetailResponse;

  @override
  void initState() {
    super.initState();
    personDetailResponse = fetchPersonDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder<PeopleDetailResponse>(
        future: personDetailResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Skeletonizer(
                enabled: false, child: PeopleDetailItem(actor: snapshot.data!));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
