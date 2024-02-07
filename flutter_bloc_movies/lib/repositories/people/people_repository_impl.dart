import 'dart:convert';

import 'package:flutter_bloc_movies/models/people_popular_response/people_popular_response.dart';
import 'package:flutter_bloc_movies/repositories/people/people_repository.dart';
import 'package:http/http.dart';

class PeopleRepositoryImpl extends PeopleRepository {
  Client _httpClient = Client();

  @override
  Future<People> fetchPeopleDetail(int peopleId) {
    throw UnimplementedError();
  }

  @override
  Future<List<People>> fetchPeoplePopular() async {
    final response = await _httpClient.get(Uri.parse(
        'https://api.themoviedb.org/3/person/popular?api_key=b415c3bcbd59bc1b962dd0ac536ee99e'));
    if (response.statusCode == 200) {
      return PeoplePopularResponse.fromJson(json.decode(response.body))
          .results!;
    } else {
      throw Exception('Failed to load people list');
    }
  }
}
