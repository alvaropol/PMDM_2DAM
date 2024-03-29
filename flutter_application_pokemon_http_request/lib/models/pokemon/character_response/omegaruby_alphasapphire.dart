import 'dart:convert';

class OmegarubyAlphasapphire {
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  OmegarubyAlphasapphire({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory OmegarubyAlphasapphire.fromMap(Map<String, dynamic> data) {
    return OmegarubyAlphasapphire(
      frontDefault: data['front_default'] as String?,
      frontFemale: data['front_female'] as String?,
      frontShiny: data['front_shiny'] as String?,
      frontShinyFemale: data['front_shiny_female'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OmegarubyAlphasapphire].
  factory OmegarubyAlphasapphire.fromJson(String data) {
    return OmegarubyAlphasapphire.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [OmegarubyAlphasapphire] to a JSON string.
  String toJson() => json.encode(toMap());
}
