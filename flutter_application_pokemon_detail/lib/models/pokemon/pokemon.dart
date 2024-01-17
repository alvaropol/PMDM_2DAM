class Pokemon {
  int? baseExperience;
  int? height;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  String? name;
  int? order;
  List<dynamic>? pastAbilities;
  List<dynamic>? pastTypes;
  int? weight;

  Pokemon({
    this.baseExperience,
    this.height,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.name,
    this.order,
    this.pastAbilities,
    this.pastTypes,
    this.weight,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        height: json['height'] as int?,
        id: json['id'] as int?,
        isDefault: json['is_default'] as bool?,
        locationAreaEncounters: json['location_area_encounters'] as String?,
        name: json['name'] as String?,
        order: json['order'] as int?,
        pastAbilities: json['past_abilities'] as List<dynamic>?,
        pastTypes: json['past_types'] as List<dynamic>?,
        weight: json['weight'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'base_experience': baseExperience,
        'height': height,
        'id': id,
        'is_default': isDefault,
        'location_area_encounters': locationAreaEncounters,
        'name': name,
        'order': order,
        'past_abilities': pastAbilities,
        'past_types': pastTypes,
        'weight': weight,
      };
}
