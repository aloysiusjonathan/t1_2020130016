

import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

 @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255,7,54,46),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40.0),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
            const SizedBox(height: 10.0),  // Spacer
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sign in now to access your excercises and saved music.',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 20.0),  // Spacer
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 450.0,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 12, 92, 79),
                      borderRadius: BorderRadius.circular(25.0),  // Mengatur sudut yang terbulat
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



