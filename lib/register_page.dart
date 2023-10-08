// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:t1_2020130016/signin_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isPasswordHidden = true;
  bool isChecked = false; // Status awal checkbox

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double boxWidth = screenWidth - 10.0;
    double redBoxWidth = boxWidth - 40.0;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50),
            const Text(
              'Register',
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
              child: Container(
                width: boxWidth,
                height: 580.0,
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
                                color: const Color.fromARGB(255, 8, 53, 46),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignInPage()),
                                  );
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 8, 53, 46),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                child: const Text(
                                  'My Account',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color:
                                        Color.fromARGB(255, 33, 150, 83),
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
                                color: const Color.fromARGB(255, 33, 150, 83),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: const Center(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
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
                      // Form Nama
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
                              Icons.person,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 15.0),
                            Expanded(
                              child: TextField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'Full name',
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
                      top: 320.0,
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
                      top: 420.0,
                      left: 20.0,
                      right: 20.0,
                      // Checkbox
                      child: Container(
                        width: redBoxWidth,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 13, 71, 61),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10.0),
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                // Ketika checkbox diubah
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                            Text(
                              'I accepted ',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                            const Text(
                              'Terms & Privacy Policy',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                            const SizedBox(width: 10.0),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 480.0,
                      left: 20.0,
                      right: 20.0,
                      // Continue Button
                      child: Container(
                        width: redBoxWidth,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 254, 194, 101),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()),
                            );
                          },
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 254, 194, 101),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 20.0,
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
