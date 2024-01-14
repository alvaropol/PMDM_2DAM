import 'package:flutter/material.dart';
import 'package:flutter_application_airport/widget/card_inf_airport.dart';

class AirportScreen extends StatelessWidget {
  const AirportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: const Center(
        child: CardInfoVuelo(
            departureAirport: 'Madrid',
            arrivalAirport: 'Londres',
            duration: '2h 10m',
            airlineImage:
                'https://ico.simpleness.org/static/transport-logos/iberia.png',
            airplaneName: 'Iberia 7748',
            departureAirportCode: 'MAD',
            arrivalAirportCode: 'LHR',
            departureTime: '22:05',
            arrivalTime: '20:55'),
      ),
    );
  }
}
