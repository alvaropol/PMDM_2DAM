import 'package:flutter/material.dart';
import 'package:flutter_application_google_maps/widgets/fonts_widget.dart';

class FontsScreen extends StatelessWidget {
  const FontsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text('Valencia Fonts in Google Maps'),
        )),
        body: const SizedBox(
          width: double.infinity,
          child: FontsWidget(),
        ));
  }
}
