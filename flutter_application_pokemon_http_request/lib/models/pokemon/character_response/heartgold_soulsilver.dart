import 'dart:convert';

class HeartgoldSoulsilver {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  HeartgoldSoulsilver({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory HeartgoldSoulsilver.fromMap(Map<String, dynamic> data) {
    return HeartgoldSoulsilver(
      backDefault: data['back_default'] as String?,
      backFemale: data['back_female'] as String?,
      backShiny: data['back_shiny'] as String?,
      backShinyFemale: data['back_shiny_female'] as String?,
      frontDefault: data['front_default'] as String?,
      frontFemale: data['front_female'] as String?,
      frontShiny: data['front_shiny'] as String?,
      frontShinyFemale: data['front_shiny_female'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'back_default': backDefault,
        'back_female': backFemale,
        'back_shiny': backShiny,
        'back_shiny_female': backShinyFemale,
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HeartgoldSoulsilver].
  factory HeartgoldSoulsilver.fromJson(String data) {
    return HeartgoldSoulsilver.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [HeartgoldSoulsilver] to a JSON string.
  String toJson() => json.encode(toMap());
}
