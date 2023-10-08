import 'package:flutter/material.dart';
import 'package:t1_2020130016/signin_page.dart';
// import 'package:t1_2020130016/register_page.dart';
// import 'package:t1_2020130016/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2020130016 - Aloysius Jonathan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255,7,54,46)),
        useMaterial3: true,
        fontFamily: 'LibreBaskerville',
      ),
      home: const SignInPage(),
    );
  }
}