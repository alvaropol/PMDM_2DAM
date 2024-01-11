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
              const SizedBox(height: 6),
              const Text(
                'Beautiful, Private Sharing',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const SizedBox(height: 160),
              const FilledButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                    fixedSize: MaterialStatePropertyAll(
                      Size(250, 55),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 224, 26, 26),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(height: 30),
              const Text(
                'Already have a Path account?',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              const FilledButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        side: BorderSide(color: Colors.white54))),
                    fixedSize: MaterialStatePropertyAll(
                      Size(250, 55),
                    ),
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.normal),
                  )),
              const SizedBox(height: 10),
              SizedBox(
                width: 250,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'By using Path, you agree to Paths ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms of Use ',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline)),
                      TextSpan(
                          text: 'and ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                              fontSize: 16)),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
