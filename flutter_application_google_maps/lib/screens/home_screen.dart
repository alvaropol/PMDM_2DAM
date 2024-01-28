import 'package:flutter/material.dart';
import 'package:flutter_application_google_maps/widgets/marker_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salesianos Triana position in Google Maps'),
      ),
      body: const MarkerItem(),
    );
  }
}
