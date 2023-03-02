import 'package:flutter/material.dart';
import 'home_page.dart';

import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _isbutton = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        setState(() {
          _isbutton = 1;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(
          children: [
            Image.asset(
              'assets/welcome.jpg',
              fit: BoxFit.cover,
              height: 1000,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'Lets Find The \n Right Bike For \n You',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredokaOne(
                      fontStyle: FontStyle.italic,
                      color: Colors.white70,
                      textStyle: Theme.of(context).textTheme.headlineSmall),
                ),
              ),
            ),
            if (_isbutton == 1)
              Container(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white70,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          textStyle: const TextStyle(fontSize: 15)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homepage()),
                        );
                      },
                      child: const Text('Get Started > ')),
                ),
              )
          ],
        ));
  }
}
