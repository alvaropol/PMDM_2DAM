import 'dart:convert';

import 'geo_point2d.dart';

class Font {
  int? objectid;
  String? calle;
  String? codigo;
  String? foto;
  GeoPoint2d? geoPoint2d;

  Font({
    this.objectid,
    this.calle,
    this.codigo,
    this.foto,
    this.geoPoint2d,
  });

  factory Font.fromMap(Map<String, dynamic> data) => Font(
        objectid: data['objectid'] as int?,
        calle: data['calle'] as String?,
        codigo: data['codigo'] as String?,
        foto: data['foto'] as String?,
        geoPoint2d: data['geo_point_2d'] == null
            ? null
            : GeoPoint2d.fromMap(data['geo_point_2d'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'objectid': objectid,
        'calle': calle,
        'codigo': codigo,
        'foto': foto,
        'geo_point_2d': geoPoint2d?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Font].
  factory Font.fromJson(String data) {
    return Font.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Font] to a JSON string.
  String toJson() => json.encode(toMap());
}
