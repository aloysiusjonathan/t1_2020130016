import 'package:flutter/material.dart';
import 'package:t1_2020130016/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile App Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255,7,54,46)),
        useMaterial3: true,
      ),
      home: const SignInPage(),
    );
  }
}