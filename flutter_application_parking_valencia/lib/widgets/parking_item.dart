import 'package:flutter/material.dart';
import 'package:flutter_application_parking_valencia/models/parking/parking_response/result.dart';

class ParkingItem extends StatelessWidget {
  final Result parking;
  const ParkingItem({super.key, required this.parking});

  @override
  Widget build(BuildContext context) {
    String printPlazas() {
      return parking.plazaslibr! <= 0 ? 'Sin plazas' : '${parking.plazaslibr}';
    }

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: const DecorationImage(
            image: AssetImage('../assets/img/valencia.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.local_parking_rounded),
                  iconColor: Colors.white,
                  title: Text(
                    parking.nombre!,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Dirección: ${parking.direccion}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Plazas libres --> ${printPlazas()}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
