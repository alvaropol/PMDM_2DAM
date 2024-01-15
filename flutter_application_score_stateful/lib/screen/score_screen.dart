import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  final String nameTeam1;
  final String nameTeam2;

  const ScoreScreen({
    Key? key,
    required this.nameTeam1,
    required this.nameTeam2,
  }) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int team1Score = 0;
  int team2Score = 0;

  bool _buttonPressed = true;
  String mode = 'Dark';

  List<String> carouselImages = [
    'https://as01.epimg.net/baloncesto/imagenes/2022/06/06/nba/1654469115_590300_1654483373_noticia_normal.jpg',
    'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blte6e1de0e578f715a/65817d09f0da07040a43cf11/Boston.jpg?auto=webp&format=pjpg&width=3840&quality=60'
  ];

  void _incrementScore(int team, int points) {
    setState(() {
      if (team == 1) {
        team1Score += points;
      } else {
        team2Score += points;
      }
    });
  }

  void _resetScore() {
    setState(() {
      team1Score = 0;
      team2Score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _buttonPressed ? Colors.white : const Color.fromARGB(255, 41, 41, 41),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('NBA Match : ${widget.nameTeam1} - ${widget.nameTeam2}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/thumb/0/01/Golden_State_Warriors_logo.svg/1200px-Golden_State_Warriors_logo.svg.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nameTeam1,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _buttonPressed
                              ? const Color.fromARGB(255, 41, 41, 41)
                              : Colors.white),
                    ),
                    Text('Score: $team1Score',
                        style: TextStyle(
                            color: _buttonPressed
                                ? const Color.fromARGB(255, 41, 41, 41)
                                : Colors.white)),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 218, 218, 218),
                      ),
                      onPressed: () => _incrementScore(1, 1),
                      child: const Text(
                        '1 point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 218, 218, 218),
                      ),
                      onPressed: () => _incrementScore(1, 2),
                      child: const Text(
                        '2 points',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 218, 218, 218),
                      ),
                      onPressed: () => _incrementScore(1, 3),
                      child: const Text(
                        '3 points',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikinews/en/thumb/3/35/Celtic_FC.svg/1200px-Celtic_FC.svg.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nameTeam2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _buttonPressed
                              ? const Color.fromARGB(255, 41, 41, 41)
                              : Colors.white),
                    ),
                    Text(
                      'Score: $team2Score',
                      style: TextStyle(
                          color: _buttonPressed
                              ? const Color.fromARGB(255, 41, 41, 41)
                              : Colors.white),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 218, 218, 218),
                      ),
                      onPressed: () => _incrementScore(2, 1),
                      child: const Text(
                        '1 point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 218, 218, 218),
                      ),
                      onPressed: () => _incrementScore(2, 2),
                      child: const Text(
                        '2 points',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 218, 218, 218),
                      ),
                      onPressed: () => _incrementScore(2, 3),
                      child: const Text(
                        '3 points',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 168, 74, 74)),
              onPressed: _resetScore,
              child: const Text(
                'Reset',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: carouselImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.network(
                      carouselImages[index],
                      width: 200,
                      height: 200,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _buttonPressed = !_buttonPressed;
            mode = _buttonPressed ? 'Dark' : 'White';
          });
        },
        backgroundColor: mode == 'Dark'
            ? const Color.fromARGB(255, 48, 48, 49)
            : Colors.white,
        child: Text(
          '$mode mode',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: mode == 'Dark'
                  ? Colors.white
                  : const Color.fromARGB(255, 48, 48, 49)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
