import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_parking_valencia/models/parking/parking_response/parking_response.dart';
import 'package:flutter_application_parking_valencia/models/parking/parking_response/result.dart';
import 'package:http/http.dart' as http;

class ParkingWidget extends StatefulWidget {
  const ParkingWidget({super.key});

  @override
  State<ParkingWidget> createState() => _ParkingWidgetState();
}

class _ParkingWidgetState extends State<ParkingWidget> {
  List<Result>? parkingList;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchParkingList();
  }

  Future<void> fetchParkingList() async {
    final response = await http.get(Uri.parse(
        'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/parkings/records?limit=22'));
    if (response.statusCode == 200) {
      final parkingResponse =
          ParkingResponse.fromMap(json.decode(response.body));
      setState(() {
        parkingList = parkingResponse.results;
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load Pokémon list');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.arrow_drop_down_circle),
            title: const Text('Card title 1'),
            subtitle: Text(
              'Secondary Text',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.asset('assets/card-sample-image.jpg'),
          Image.asset('assets/card-sample-image-2.jpg'),
        ],
      ),
    );
  }
}
