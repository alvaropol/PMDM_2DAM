import 'package:flutter/material.dart';
import 'package:flutter_application_actors/widget/actor_list.dart';
import 'package:google_fonts/google_fonts.dart';

class ActorScreen extends StatelessWidget {
  const ActorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Text(
              'Best Iranian Actors and Actresses',
              style: GoogleFonts.kanit().copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'March 2020',
              style: GoogleFonts.kanit().copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Actor(
                      urlImagen:
                          'https://hips.hearstapps.com/hmg-prod/images/keanu-reeves-netflix-superheroe-1574671159.jpg?crop=0.558xw:0.838xh;0.202xw,0.0833xh&resize=1200:*',
                      nombre: 'Keanu',
                      apellidos: 'Reaves'),
                  Actor(
                      urlImagen:
                          'https://www.diariodesevilla.es/2020/08/14/cine/Dwayne-Johnson-Roca-liderato-actores_1492060919_124715225_667x375.jpg',
                      nombre: 'Dwayne',
                      apellidos: 'Johnson'),
                  Actor(
                      urlImagen:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/TechCrunch_Disrupt_2019_%2848834434641%29_%28cropped%29.jpg/220px-TechCrunch_Disrupt_2019_%2848834434641%29_%28cropped%29.jpg',
                      nombre: 'Will',
                      apellidos: 'Smith')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
