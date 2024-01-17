import 'package:flutter/material.dart';
import 'package:flutter_application_rent_car/widget/card_car.dart';

class RentScreen extends StatelessWidget {
  const RentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 61, 145),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'París Charles de Gaulle',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  '20 abr.2023 - 24 abr.2023',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          CardCar(
            nombre: 'Seat Ibiza - Diesel',
            tamanyo: 'Mini',
            puertas: 4,
            marchas: 'Auto',
            aireAcond: 'A/A',
            capacidad: 5,
            maletero: 1,
            precio: 20.5,
            ofertas: 23,
            imagen: 'https://freepngimg.com/thumb/car/4-2-car-png-hd.png',
          ),
          CardCar(
            nombre: 'Seat Ibiza - Diesel',
            tamanyo: 'Mini',
            puertas: 4,
            marchas: 'Auto',
            aireAcond: 'A/A',
            capacidad: 5,
            maletero: 1,
            precio: 20.5,
            ofertas: 23,
            imagen: 'https://freepngimg.com/thumb/car/4-2-car-png-hd.png',
          ),
          CardCar(
            nombre: 'Seat Ibiza - Diesel',
            tamanyo: 'Mini',
            puertas: 4,
            marchas: 'Auto',
            aireAcond: 'A/A',
            capacidad: 5,
            maletero: 1,
            precio: 20.5,
            ofertas: 23,
            imagen: 'https://freepngimg.com/thumb/car/4-2-car-png-hd.png',
          ),
        ],
      ),
    );
  }
}
