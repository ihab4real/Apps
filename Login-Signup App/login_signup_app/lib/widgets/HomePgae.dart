// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool passwordVisibility = true;
  var passwordIcon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 900,
              width: 450,
              color: Colors.brown[500],
            ),
            Image.asset(
              'assets/images/main_top.png',
              height: 170.0,
            ),
            Positioned(
              top: 70.0,
              left: 153.0,
              right: 153.0,
              child: Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue[200],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                height: 150,
              ),
            ),
            Positioned(
              top: 130.0,
              right: 50,
              left: 50,
              child: SvgPicture.asset(
                'assets/icons/chat.svg',
              ),
            ),
            Positioned(
              top: 580,
              left: 60,
              right: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(85.0, 10.0, 85.0, 10.0),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[200]),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0))),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(75.0, 10.0, 75.0, 10.0),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[300]),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0))),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
