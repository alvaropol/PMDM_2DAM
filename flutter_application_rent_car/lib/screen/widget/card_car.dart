import 'package:flutter/material.dart';

class CardCar extends StatelessWidget {
  const CardCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 15),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 14),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'El más barato, Buena puntuación',
                  style: TextStyle(
                      color: Color.fromARGB(255, 131, 216, 134),
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                    child: Text(
                  '45 ofertas',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.end,
                )),
              ],
            ),
            const SizedBox(height: 30),
            Image.network(
              'https://i.pinimg.com/originals/dc/19/e9/dc19e9b94a372ebc21ffeb7623d5632a.png',
              width: 200,
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  'Mini',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const Row(
              children: [
                Text(
                  '2-3 puertas · Citroen C1 Diesel o similar',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(''),
                const Text(
                  '2-3 puertas · Citroen C1 Diesel o similar',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
