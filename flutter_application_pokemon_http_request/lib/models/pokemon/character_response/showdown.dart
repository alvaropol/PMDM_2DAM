import 'dart:convert';

class Showdown {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  dynamic backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  Showdown({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory Showdown.fromMap(Map<String, dynamic> data) => Showdown(
        backDefault: data['back_default'] as String?,
        backFemale: data['back_female'] as String?,
        backShiny: data['back_shiny'] as String?,
        backShinyFemale: data['back_shiny_female'] as dynamic,
        frontDefault: data['front_default'] as String?,
        frontFemale: data['front_female'] as String?,
        frontShiny: data['front_shiny'] as String?,
        frontShinyFemale: data['front_shiny_female'] as String?,
      );

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
  /// Parses the string and returns the resulting Json object as [Showdown].
  factory Showdown.fromJson(String data) {
    return Showdown.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Showdown] to a JSON string.
  String toJson() => json.encode(toMap());
}
