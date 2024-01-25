import 'dart:convert';

import 'result.dart';

class TrailerListResponse {
  int? id;
  List<Trailer>? results;

  TrailerListResponse({this.id, this.results});

  factory TrailerListResponse.fromMap(Map<String, dynamic> data) {
    return TrailerListResponse(
      id: data['id'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Trailer.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TrailerListResponse].
  factory TrailerListResponse.fromJson(String data) {
    return TrailerListResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TrailerListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
