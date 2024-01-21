import 'package:flutter/material.dart';
import 'package:flutter_application_parking_valencia/models/parking/parking_response/result.dart';
import 'package:flutter_application_parking_valencia/widgets/parking_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ParkingScreen extends StatefulWidget {
  final List<Result> parkingList;
  const ParkingScreen({super.key, required this.parkingList});

  @override
  State<ParkingScreen> createState() => _ParkingScreenState();
}

class _ParkingScreenState extends State<ParkingScreen> {
  bool _isLoading = true;

  Future<void> _initData() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Parking List of Valencia'),
        ),
        body: Skeletonizer(
          enabled: _isLoading,
          child: ListView.builder(
            itemCount: widget.parkingList.length,
            itemBuilder: (context, index) {
              return ParkingItem(parking: widget.parkingList[index]);
            },
          ),
        ));
  }
}
