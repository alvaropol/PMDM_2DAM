import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActorScreen extends StatelessWidget {
  const ActorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 70),
          Text('Best Iranian Actors and Actresses',
              style: GoogleFonts.kanit().copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              )),
          const SizedBox(height: 5),
          Text('March 2020',
              style: GoogleFonts.kanit().copyWith(
                color: Colors.grey,
              ))
        ]),
      ),
    );
  }
}
