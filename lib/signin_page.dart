// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:t1_2020130016/main_page.dart';
import 'package:t1_2020130016/register_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double boxWidth = screenWidth - 10.0;
    double redBoxWidth = boxWidth - 40.0;

    return Scaffold(
      // Container Utama
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50),
            const Text(
              'Sign In',
              style: TextStyle(fontSize: 48.0, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sign in now to access your',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            const Text(
              'excercises and saved music.',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            const SizedBox(height: 60),
            Center(
              // Box Besar
              child: Container(
                width: boxWidth,
                height: 480.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 13, 71, 61),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20.0,
                      left: 20.0,
                      right: 20.0,
                      // Box Luar Acc & Reg
                      child: Container(
                        width: redBoxWidth,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 53, 46),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Box My Account
                            Container(
                              width: 200.0,
                              height: 65.0,
                              margin: const EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 33, 150, 83),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: const Center(
                                child: Text(
                                  'My Account',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            // Box Register
                            Container(
                              width: 200.0,
                              height: 65.0,
                              margin: const EdgeInsets.only(left: 5.0),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 8, 53, 46),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              // Navigasi ke Register Page
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPage()),
                                  );
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 8, 53, 46),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromARGB(255, 33, 150, 83),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120.0,
                      left: 20.0,
                      right: 20.0,
                      // Form Email
                      child: Container(
                        width: redBoxWidth,
                        height: 80.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          color: const Color.fromARGB(255, 13, 71, 61),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 15.0),
                            Expanded(
                              child: TextField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'Enter your email',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.5)),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220.0,
                      left: 20.0,
                      right: 20.0,
                      // Form Password
                      child: Container(
                        width: redBoxWidth,
                        height: 80.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          color: const Color.fromARGB(255, 13, 71, 61),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 15.0),
                            Expanded(
                              child: TextField(
                                obscureText: _isPasswordHidden,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.5)),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _isPasswordHidden =
                                      !_isPasswordHidden; // Memperbarui status visibilitas teks
                                });
                              },
                              child: Icon(
                                _isPasswordHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility, // Menggunakan icon hide
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 320.0,
                      left: 20.0,
                      right: 20.0,
                      // Teks
                      child: Container(
                        width: redBoxWidth,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 13, 71, 61),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 10.0),
                            Text(
                              'Forgot password?',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                            SizedBox(width: 10.0),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 380.0,
                      left: 20.0,
                      right: 20.0,
                      // Sign In Box
                      child: Container(
                        width: redBoxWidth,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 254, 194, 101),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        // Navigation ke Main Page
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()),
                            );
                          },
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 254, 194, 101),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 7, 54, 46),
    );
  }
}
