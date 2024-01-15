import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  final String nombreEquipo1;
  final String nombreEquipo2;

  const ScoreScreen(
      {super.key, required this.nombreEquipo1, required this.nombreEquipo2});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int puntuacionEquipoLocal = 0;
  int puntuacionEquipoVisitante = 0;

  String mode = 'Dark';
  bool _buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _buttonPressed ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 183, 89),
        title: Text(
            'Partido entre ${widget.nombreEquipo1} y ${widget.nombreEquipo2}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ' ${widget.nombreEquipo1} $puntuacionEquipoLocal - $puntuacionEquipoVisitante ${widget.nombreEquipo2}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          setState(() {
            _buttonPressed == false
                ? _buttonPressed = true
                : _buttonPressed = false;
            mode == 'Dark' ? mode = 'White' : mode = 'Dark';
          });
        },
        tooltip: 'Change mode',
        child: Text(
          '$mode mode',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
