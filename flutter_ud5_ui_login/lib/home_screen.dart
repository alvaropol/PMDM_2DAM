import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(230, 47, 23, 1),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 200),
                child: Image.asset(
                  'img/path_logo.png',
                  width: 230,
                ),
              ),
              const Text('Beautiful, Private Sharing')
            ],
          ),
        ));
  }
}
