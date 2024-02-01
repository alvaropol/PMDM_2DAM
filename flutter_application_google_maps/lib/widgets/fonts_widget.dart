import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_google_maps/models/Fonts/fonts_response/fonts_response.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

Future<FontsResponse> fetchFontsList() async {
  final response = await http.get(Uri.parse(
      'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/fonts-daigua-publica-fuentes-de-agua-publica/records?limit=20'));

  if (response.statusCode == 200) {
    return FontsResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load fonts list');
  }
}

class FontsWidget extends StatefulWidget {
  const FontsWidget({super.key});

  @override
  State<FontsWidget> createState() => _FontsWidgetState();
}

class _FontsWidgetState extends State<FontsWidget> {
  late Future<FontsResponse> fontsList;

  @override
  void initState() {
    super.initState();
    fontsList = fetchFontsList();
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition cameraPosition = CameraPosition(
    target: LatLng(39.477131215903654, -0.3743088074392089),
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fontsList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return const Text('No data');
        } else {
          final fontsList = snapshot.data!.results;

          return Scaffold(
            body: GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: cameraPosition,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: Set<Marker>.from(
                fontsList!.map(
                  (fonts) => Marker(
                    markerId: MarkerId(fonts.objectid.toString()),
                    position: LatLng(
                      fonts.geoPoint2d!.lat!,
                      fonts.geoPoint2d!.lon!,
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
