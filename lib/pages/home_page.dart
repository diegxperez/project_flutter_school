import 'package:flutter/material.dart';
import 'package:flutter_school/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 76, 26),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.all(10.0),
            width: 100,
            height: 100,
            child: Image.asset(
              'lib/images/logo.png',
            ),
          ),

          // Tittle
          Text(
            'Tasty App',
            style: GoogleFonts.poppins(
              fontSize: 50,
              color: Colors.white,
            ),
          ),

          // image
          Image.asset(
            'lib/images/fooddelivery.png',
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyButton(
              text: 'Empezar',
              onTap: () {
                Navigator.pushNamed(context, '/Login');
              },
            ),
          )
        ],
      ),
    );
  }
}
