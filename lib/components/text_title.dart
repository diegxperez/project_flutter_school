import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTitle extends StatelessWidget {
  final String myTitle;

  const MyTextTitle({super.key, required this.myTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      myTitle,
      style: GoogleFonts.poppins(
          color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),
    );
  }
}

class MyText extends StatelessWidget {
  final String myText;

  const MyText({super.key, required this.myText});

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: GoogleFonts.poppins(
          color: Colors.grey[300], fontWeight: FontWeight.w400, fontSize: 14),
    );
  }
}
