import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final String nombre;
  final String tamanyo;
  final int puertas;
  final String imagen;
  final String marchas;
  final String aireAcond;
  final int capacidad;
  final int maletero;
  final int ofertas;
  final String descripcion;

  const CarDetailScreen({
    Key? key,
    required this.nombre,
    required this.tamanyo,
    required this.puertas,
    required this.marchas,
    required this.aireAcond,
    required this.capacidad,
    required this.maletero,
    required this.ofertas,
    required this.imagen,
    required this.descripcion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nombre),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imagen,
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              'Tamaño: $tamanyo',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              '$puertas puertas · $nombre',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Image.asset(
                  '../assets/icons/gears_cars.png',
                  width: 30,
                ),
                Text(
                  marchas,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.air),
                const SizedBox(width: 5),
                Text(
                  aireAcond,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.person),
                const SizedBox(width: 5),
                Text(
                  '$capacidad personas',
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.cases_outlined),
                const SizedBox(width: 5),
                Text(
                  '$maletero',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Divider(color: Colors.grey),
            const Text(
              'Descripción:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              descripcion,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Gama de colores',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://s1.ppllstatics.com/diariovasco/www/multimedia/202202/16/media/cortadas/71414515-U120385294225Sq-U16098367968271H-1248x770@Diario%20Vasco-DiarioVasco.JPG',
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
                'https://images.prismic.io/carwow/b5bba67b-4d4c-463f-b5e8-4a7935b991a9_Los-nuevos-SEAT-Ibiza-y-Arona-actualizan-su-oferta-comercial-en-2022_03_HQ+%282%29.jpg')
          ],
        ),
      ),
    );
  }
}
