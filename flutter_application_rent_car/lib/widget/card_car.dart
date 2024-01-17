import 'package:flutter/material.dart';
import 'package:flutter_application_rent_car/widget/detail_car.dart';

class CardCar extends StatelessWidget {
  final String nombre;
  final String tamanyo;
  final int puertas;
  final double precio;
  final String imagen;
  final String marchas;
  final String aireAcond;
  final int capacidad;
  final int maletero;
  final int ofertas;

  const CardCar(
      {super.key,
      required this.nombre,
      required this.tamanyo,
      required this.puertas,
      required this.marchas,
      required this.aireAcond,
      required this.capacidad,
      required this.maletero,
      required this.ofertas,
      required this.imagen,
      required this.precio});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 15),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'El más barato, Buena puntuación',
                  style: TextStyle(
                      color: Color.fromARGB(255, 131, 216, 134),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '$ofertas ofertas',
                  style: const TextStyle(color: Colors.grey),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Image.network(
              imagen,
              width: 200,
            ),
            const SizedBox(height: 10),
            Text(
              tamanyo,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              '$puertas puertas · $nombre',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/gears_cars.png',
                  width: 30,
                ),
                Text(
                  marchas,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.air),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  aireAcond,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.person),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '$capacidad',
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.cases_outlined),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '$maletero',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Divider(color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$precio USD',
                  style: const TextStyle(color: Colors.blue),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CarDetailScreen(
                                nombre: 'Seat Ibiza - Diesel',
                                tamanyo: 'Mini',
                                puertas: 4,
                                imagen:
                                    'https://freepngimg.com/thumb/car/4-2-car-png-hd.png',
                                marchas: 'Automático',
                                aireAcond: 'A/A',
                                capacidad: 5,
                                maletero: 1,
                                ofertas: 3,
                                descripcion:
                                    'Este es un seat ibiza que utiliza diesel, es pequeño, pero cómodo y útil para todos tus viajes que llevas años soñando.',
                              )),
                    );
                  },
                  child: const Text(
                    'SELECCIONAR',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
