import 'package:flutter/material.dart';
import 'package:flutter_school/components/button.dart';
import 'package:flutter_school/components/food_tile.dart';
import 'package:flutter_school/models/food.dart';
import 'package:flutter_school/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu
  List foodMenu = [
    //hamburger
    Food(
        name: 'Hamburger',
        price: '20.00',
        imagePath: 'lib/images/hamburger.png',
        rating: '5.0'),
    //cheeseburger
    Food(
        name: 'Cheeseburger',
        price: '25.00',
        imagePath: 'lib/images/cheeseburger.png',
        rating: '4.9'),
    //croisant
    Food(
        name: 'Croissant',
        price: '20.00',
        imagePath: 'lib/images/croissant.png',
        rating: '5.0'),
    //pretzel
    Food(
        name: 'Pretzel',
        price: '20.00',
        imagePath: 'lib/images/pretzel.png',
        rating: '4.2')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( bottomNavigationBar: GNav(
        backgroundColor: Colors.transparent,
        color: Colors.grey[500],
        activeColor: PrimaryColor,
        gap: 20,
          tabs: const [
            GButton(
              icon: Icons.home,
              //text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              //text: 'Likes',
            ),
            GButton(
              icon: Icons.person,
              //text: 'Account',
            ),
            GButton(
              icon: Icons.timer,
              //text: 'Time',
            )
          ]),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        actions: [
          Icon(Icons.shopping_cart_outlined,color: Colors.grey[600],),
          const SizedBox(width: 15,)
        ],
        title: Text(
          'Tasty',
          style: GoogleFonts.poppins(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
                color: PrimaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //Promo
                      'Promocion 20% Descuento',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    //button
                    const MyButton(text: 'Reclamar')
                  ],
                ),

                //image
                Image.asset(
                  'lib/images/hamburger.png',
                  height: 100,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                    hintText: 'Busca tu producto favorito',
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Menu',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, color: Colors.grey[800]),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //image
              Row(
                children: [
                  Image.asset(
                    'lib/images/croissant.png',
                    height: 60,
                  ),

                  const SizedBox(
                    width: 20,
                  ),
                  // name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text(
                        'Salmon Eggs',
                        style: GoogleFonts.poppins(fontSize: 18),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      //price
                      Text(
                        'S./20.00',
                        style: GoogleFonts.poppins(color: Colors.grey[700]),
                      )
                    ],
                  ),
                ],
              ),

              // Heart
              const Icon(
                Icons.favorite_outline,
                color: Colors.grey,
                size: 28,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
