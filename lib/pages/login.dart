import 'package:flutter/material.dart';
import 'package:flutter_school/components/button.dart';
import 'package:flutter_school/components/square_tile.dart';
import 'package:flutter_school/components/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text edit controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),

              //logo
              //const Icon(
              // Icons.lock,
              //  size: 100,
              //),
              Image.asset('lib/images/logo.png',height: 100,),

              const SizedBox(
                height: 30,
              ),

              //text
              Text(
                'Bienvenido',
                style:
                    GoogleFonts.poppins(color: Colors.grey[700], fontSize: 20),
              ),

              const SizedBox(
                height: 25,
              ),

              // user
              MyTextField(
                controller: usernameController,
                hintText: 'Ingrese su usuario',
                obscureText: false,
              ),

              const SizedBox(
                height: 10,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Ingrese su contraseña',
                obscureText: true,
              ),

              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Olvidaste la contraseña?',
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // sign in
              ButtonLogin(
                onTap: () {
                  Navigator.pushNamed(context, '/Menu');
                },
              ),

              const SizedBox(
                height: 40,
              ),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Continuar con',
                        style: GoogleFonts.poppins(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // google and apple

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(
                    width: 25,
                  ),

                  //apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              const SizedBox(
                height: 40,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No eres usuario?',
                    style: GoogleFonts.poppins(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Registrate ahora',
                    style: GoogleFonts.poppins(
                        color: Colors.deepOrange, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
