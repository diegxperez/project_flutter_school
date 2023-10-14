import 'package:flutter/material.dart';
import 'package:flutter_school/components/text_title.dart';
import 'package:flutter_school/theme/colors.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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

            Image.asset('lib/images/amigos.png'),

            const SizedBox(
              height: 50,
            ),
            const MyTextTitle(myTitle: 'Te acompañamos'),
            const MyTextTitle(myTitle: 'en toda ocasion'),

            const SizedBox(
              height: 30,
            ),

            const MyText(myText: 'Ahora puedes pedir desde la app'),
            const MyText(myText: 'las 24 horas,  sin restricciones'),

          ],
        ),
      ),
    );
  }
}
