import 'package:flutter/material.dart';
import 'package:flutter_school/components/text_title.dart';
import 'package:flutter_school/theme/colors.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        color: PrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),

            Image.asset('lib/images/fechado.png'),

            const SizedBox(
              height: 50,
            ),
            const MyTextTitle(myTitle: 'Se te paso la hora'),
            const MyTextTitle(myTitle: 'de comer?'),

            const SizedBox(
              height: 30,
            ),

            const MyText(myText: 'No te preocupes!'),
            const MyText(myText: 'Tenemos una amplia variedad de comida'),
            const MyText(myText: 'no te olvides de ver las promociones'),


          ],
        ),
      ),
    );
  }
}
