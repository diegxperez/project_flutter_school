import 'package:flutter/material.dart';
import 'package:flutter_school/components/text_title.dart';
import 'package:flutter_school/theme/colors.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

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

            Image.asset('lib/images/amigos_2.png'),

            const SizedBox(
              height: 50,
            ),
            const MyTextTitle(myTitle: 'Comparte tu experiencia'),
            const MyTextTitle(myTitle: 'con amigos y familiares'),

            const SizedBox(
              height: 30,
            ),

            const MyText(myText: 'La felicidad es para compartir'),
            const MyText(myText: 'a cualquier hora'),

          ],
        ),
      ),
    );
  }
}
