import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              right: -40,
              top: 0,
              child: Image.asset(
                'assets/images/signup_topp.png',
                height: 180.0,
                width: 180.0,
              ),
            ),
            Positioned(
              top: 70.0,
              left: 180.0,
              right: 100.0,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue[200],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 150,
              child: Transform(
                transform: Matrix4.rotationY(pi),
                child: Image.asset(
                  'assets/images/login_bottom.png',
                  height: 100,
                ),
              ),
            ),
            Positioned(
              top: 120.0,
              right: 50,
              left: 50,
              child: SvgPicture.asset(
                'assets/icons/signup.svg',
              ),
            ),
            Positioned(
              top: 480,
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
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an acoount?",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 32, 50, 88),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                            color: Colors.blue[300],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(children: const [
                    Expanded(
                        child: Divider(
                      thickness: 2.0,
                    )),
                    Text(
                      'OR',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black45),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2.0,
                    )),
                  ]),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Positioned(
                    // width: 250,
                    bottom: 100,
                    left: 70.0,
                    right: 70.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(19.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.brown.shade700,
                                width: 1.0,
                              ),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/facebook.svg',
                              color: Colors.blue[600],
                              height: 15.0,
                              width: 15.0,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(19.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.brown.shade700, width: 1.0),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/google-plus.svg',
                              color: Colors.red[600],
                              height: 15.0,
                              width: 15.0,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(19.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.brown.shade700, width: 1.0),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/twitter.svg',
                              color: Colors.blue[600],
                              height: 15.0,
                              width: 15.0,
                            ),
                          ),
                        ),
                      ],
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
