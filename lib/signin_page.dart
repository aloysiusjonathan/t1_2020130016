// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
            SizedBox(height: 10.0),  // Spacer
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sign in now',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0),  // Spacer
            Expanded(
              child: Center(
                child: Container(
                  width: 200.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,  // Ganti warna sesuai keinginan
                    borderRadius: BorderRadius.circular(10.0),  // Mengatur sudut yang terbulat
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



