import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(
              text,
              style: const TextStyle(
                  color: Color.fromARGB(255, 240, 76, 26),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),

            const SizedBox(
              width: 10,
            ),

            //icon
            const Icon(
              Icons.arrow_forward,
              color: Color.fromARGB(255, 240, 76, 26),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  final void Function()? onTap;

  const ButtonLogin({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 76, 26),
            borderRadius: BorderRadius.circular(40)),
        child: Center(
          child: Text(
            'Iniciar Sesion',
            style: GoogleFonts.poppins(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
