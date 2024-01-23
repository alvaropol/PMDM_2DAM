import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/people/people_detail_response.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PeopleDetailItemWidget extends StatefulWidget {
  final int id;

  const PeopleDetailItemWidget({super.key, required this.id});

  @override
  State<PeopleDetailItemWidget> createState() => _PeopleDetailItemWidgetState();
}

class _PeopleDetailItemWidgetState extends State<PeopleDetailItemWidget> {
  late PeopleDetailResponse actor;
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

  double percentage() {
    if (actor.popularity! >= 0.0 && actor.popularity! <= 20.0) {
      return 0.2;
    } else if (actor.popularity! > 20.0 && actor.popularity! <= 50.0) {
      return 0.5;
    } else if (actor.popularity! > 50.0 && actor.popularity! <= 100.0) {
      return 1;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: _isLoading,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://image.tmdb.org/t/p/w500/${actor.profilePath!}',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Container(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(height: 5),
                      Text(
                        '${actor.name}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(height: 5),
                      Text(
                        'Known for department: ${actor.knownForDepartment}',
                      ),
                      Container(height: 5),
                      Text('Birthday: ${actor.birthday}'),
                      Container(height: 5),
                      Text('Biography: ${actor.biography}'),
                      Container(height: 10),
                      Row(
                        children: [
                          const Text('Popularity:       '),
                          CircularPercentIndicator(
                            radius: 29.0,
                            lineWidth: 4.0,
                            percent: percentage(),
                            center: Text("${percentage() * 100}%"),
                            progressColor: Colors.green,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
