import 'package:flutter/material.dart';
import 'package:flutter_application_pokemon_http_request/models/pokemon/character_response/character_response.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.pokemon});

  final CharacterResponse pokemon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(pokemon.sprites!.frontDefault!),
          Text(pokemon.name!),
        ],
      ),
    );
  }
}
