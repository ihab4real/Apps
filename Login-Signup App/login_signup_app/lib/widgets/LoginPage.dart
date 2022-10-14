import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisibility = true;
  var passwordIcon = Icons.visibility;
  var myColor = const Color.fromARGB(255, 204, 128, 218);

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
            Positioned(
              left: -90,
              top: 0,
              child: Image.asset(
                'assets/images/test9.png',
                height: 210.0,
                width: 270.0,
              ),
            ),
            Positioned(
              top: 70.0,
              left: 170.0,
              right: 170.0,
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue[200],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/login_bottom.png',
                height: 120,
              ),
            ),
            Positioned(
              top: 160.0,
              right: 50,
              left: 50,
              child: SvgPicture.asset(
                'assets/icons/login.svg',
              ),
            ),
            Positioned(
              top: 500,
              left: 60,
              right: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 270,
                    height: 50.0,
                    padding: const EdgeInsets.fromLTRB(5.0, 3.0, 0, 3.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person)),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 270,
                    height: 50.0,
                    padding: const EdgeInsets.fromLTRB(5.0, 3.0, 0, 3.0),
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: TextField(
                      obscureText: passwordVisibility,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 20.0,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordVisibility = !passwordVisibility;
                              passwordIcon = passwordIcon == Icons.visibility
                                  ? Icons.visibility_off
                                  : Icons.visibility;
                            });
                          },
                          icon: Icon(passwordIcon),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(75.0, 10.0, 75.0, 10.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(myColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0))),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an acoount?",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 32, 50, 88),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/signup');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                            color: Colors.blue[300],
                          ),
                        ),
                      )
                    ],
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
