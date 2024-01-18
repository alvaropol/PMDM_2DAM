import 'package:flutter/material.dart';
import 'package:flutter_application_pokemon_http_request/widgets/pokemon_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons'),
      ),
      body: ListView(
        children: const [CharacterWidget()],
      ),
    );
  }
}
