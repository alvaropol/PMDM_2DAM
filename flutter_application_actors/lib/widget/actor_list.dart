import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Actor extends StatelessWidget {
  final String urlImagen;
  final String nombre;
  final String apellidos;

  const Actor(
      {super.key,
      required this.urlImagen,
      required this.nombre,
      required this.apellidos});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              urlImagen,
              width: 240,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            nombre,
            style: GoogleFonts.kanit().copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 35,
            ),
          ),
          Text(
            apellidos,
            style: GoogleFonts.kanit().copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 25,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
