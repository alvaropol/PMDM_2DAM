import 'package:flutter/material.dart';

class CardInfoVuelo extends StatelessWidget {
  final String departureAirport;
  final String arrivalAirport;
  final String duration;
  final String airlineImage;
  final String airplaneName;
  final String departureAirportCode;
  final String arrivalAirportCode;
  final String departureTime;
  final String arrivalTime;

  const CardInfoVuelo(
      {super.key,
      required this.departureAirport,
      required this.arrivalAirport,
      required this.duration,
      required this.airlineImage,
      required this.airplaneName,
      required this.departureAirportCode,
      required this.arrivalAirportCode,
      required this.departureTime,
      required this.arrivalTime});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  departureTime,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  'SALIDA',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ))),
                Expanded(
                    flex: 5,
                    child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 3),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)),
                                    borderRadius: BorderRadius.circular(5.0),
                                    color:
                                        const Color.fromARGB(0, 255, 255, 255),
                                  ),
                                  child: Text(
                                    departureAirportCode,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    departureAirport,
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Image.network(airlineImage,
                                        height: 15, fit: BoxFit.fill)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Column(
                                    children: [
                                      Text(
                                        airplaneName,
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Duración: $duration',
                                  style: const TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        )))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                          alignment: Alignment.topCenter,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    arrivalTime,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'LLEGADA',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ))),
                  Expanded(
                      flex: 5,
                      child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0)),
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: const Color.fromARGB(0, 255, 255, 255),
                                ),
                                child: Text(
                                  arrivalAirportCode,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  arrivalAirport,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
