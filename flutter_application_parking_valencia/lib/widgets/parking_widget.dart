import 'package:flutter/material.dart';
import 'package:flutter_application_parking_valencia/models/parking/parking_response/parking_response.dart';
import 'package:flutter_application_parking_valencia/screens/parking_screen.dart';
import 'package:http/http.dart' as http;

Future<ParkingResponse> fetchParkingList() async {
  final response = await http.get(Uri.parse(
      'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/parkings/records?limit=99'));

  if (response.statusCode == 200) {
    return ParkingResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load de Parking');
  }
}

class ParkingWidget extends StatefulWidget {
  const ParkingWidget({super.key});

  @override
  State<ParkingWidget> createState() => _ParkingWidgetState();
}

class _ParkingWidgetState extends State<ParkingWidget> {
  late Future<ParkingResponse> parkingList;

  @override
  void initState() {
    super.initState();
    parkingList = fetchParkingList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<ParkingResponse>(
          future: parkingList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ParkingScreen(parkingList: snapshot.data!.results!);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }),
    );
  }
}
