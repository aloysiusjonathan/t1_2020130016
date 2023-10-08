import 'package:flutter/material.dart';
import 'package:t1_2020130016/signin_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Box BG1
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.78125, screenHeight * 0.613, 0, 0),
            child: Container(
              width: screenWidth * 0.097, // 50/514 = 0.097
              height: screenHeight * 0.053, // 50/945 = 0.053
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 13, 71, 61),
              ),
            ),
          ),
          // Box BG2
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.78125, screenHeight * 0.0635, 0, 0),
            child: Container(
              width: screenWidth * 0.097, // 50/514 = 0.097
              height: screenHeight * 0.053, // 50/945 = 0.053
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 13, 71, 61),
              ),
            ),
          ),
          // Container panjang & search box
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.0311,
                screenHeight * 0.0169,
                0,
                0), // 16/514 = 0.0311, 16/945 = 0.0169
            child: Container(
              width: screenWidth * 0.7782, // 400/514 = 0.7782
              height: screenHeight * 0.845, // 800/945 = 0.845
              margin: EdgeInsets.only(
                  top: screenHeight * 0.0169), // 16/945 = 0.0169
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24.0)),
                color: Color.fromARGB(255, 13, 71, 61),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * 0.0106), // 10/945 = 0.0106
                  child: Container(
                    width: screenWidth * 0.7283, // 375/514 = 0.7283
                    height: screenHeight * 0.053,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: Color.fromARGB(255, 7, 55, 47),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()),
                            );
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Breathing mind fresh",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Container 4 music
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.0311,
                screenHeight * 0.1085, screenWidth * 0.0311, 0),
            child: Container(
              width: screenWidth * 0.9720,
              height: screenHeight * 0.5185,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                color: Color.fromARGB(255, 13, 71, 61),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "4 items ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 254, 194, 101),
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "are funded",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 85,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 13, 71, 61),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 3.0,
                              top: 2,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/m.jpg',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(28.0),
                            child: Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Breathing Mind Freshing',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Healthier Mindfull • 7m 23s',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 400.0, top: 28),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 85,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 13, 71, 61),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 3.0,
                              top: 2,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/l.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(28.0),
                            child: Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Deal Organizing thoughts',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Bring out & focus within you • 5m 00s',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 400.0, top: 28),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 85,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 13, 71, 61),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 3.0,
                              top: 2,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/i.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(28.0),
                            child: Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Dealing with distractions',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Natural sense of creativity • 5m 00s',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 400.0, top: 28),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: 85,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 13, 71, 61),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 3.0,
                              top: 2,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/images/s.jpg',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(28.0),
                            child: Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mindful communication',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Natural sense of creativity • 5m 00s',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 400.0, top: 28),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Container design sudut
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.809, 0, 0, screenHeight * 0.891),
            child: Container(
              width: screenWidth * 0.9720, // 500/514 = 0.9720
              height: screenHeight * 0.5291, // 490/945 = 0.5291
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(32)),
                color: Color.fromARGB(255, 7, 54, 46),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.809, screenHeight * 0.6254, 0, 0),
            child: Container(
              width: screenWidth * 0.9720, // 500/514 = 0.9720
              height: screenHeight * 0.5291, // 500/945 = 0.5291
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(32)),
                color: Color.fromARGB(255, 7, 54, 46),
              ),
            ),
          ),
          // Container 2 music
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.0554,
                screenHeight * 0.628,
                0,
                0), // 28.5/514 = 0.0554, 605/945 = 0.6402
            child: Container(
              width: screenWidth * 0.7283, // 375/514 = 0.7283
              height: screenHeight * 0.238, // 215/945 = 0.2275
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Color.fromARGB(255, 13, 71, 61),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "  Last Night ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Sleep",
                        style: TextStyle(
                          color: Color.fromARGB(255, 254, 194, 101),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            'assets/images/night.jpg',
                            width: 400,
                            height: 75,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(28.0),
                        child: Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Midnight &",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "relaxation",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            'assets/images/sumeru.jpg',
                            width: 400,
                            height: 75,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(28.0),
                        child: Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Deep Sleep &",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Refreshment",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Kotak Icon
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.8288, screenHeight * 0.0444, 0, 0),
            child: Container(
              width: screenWidth * 0.097, // 50/514 = 0.097
              height: screenHeight * 0.053, // 50/945 = 0.053
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 33, 150, 83),
              ),
              child: const Center(
                child: Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.8288, screenHeight * 0.8296, 0, 0),
            child: Container(
              width: screenWidth * 0.097, // 50/514 = 0.097
              height: screenHeight * 0.053, // 50/945 = 0.053
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 33, 150, 83),
              ),
              child: const Center(
                child: Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.8288, screenHeight * 0.7661, 0, 0),
            child: Container(
              width: screenWidth * 0.097, // 50/514 = 0.097
              height: screenHeight * 0.053, // 50/945 = 0.053
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 33, 150, 83),
              ),
              child: const Center(
                child: Icon(
                  Icons.wb_cloudy,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.8288, screenHeight * 0.7024, 0, 0),
            child: Container(
              width: screenWidth * 0.097, // 50/514 = 0.097
              height: screenHeight * 0.053, // 50/945 = 0.053
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 33, 150, 83),
              ),
              child: const Center(
                child: Icon(
                  Icons.nightlight_round,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.8288, screenHeight * 0.6376, 0, 0),
            child: Container(
              width: screenWidth * 0.097, // 50/514 = 0.097
              height: screenHeight * 0.053, // 50/945 = 0.053
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 33, 150, 83),
              ),
              child: const Center(
                child: Icon(
                  Icons.eco,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 7, 54, 46),
    );
  }
}
