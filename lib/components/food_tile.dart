import 'package:flutter/material.dart';
import 'package:flutter_school/models/food.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // imagen
          Image.asset(
            food.imagePath,
            height: 140,
          ),

          //Text
          Text(
            food.name,
            style: GoogleFonts.poppins(fontSize: 20),
          ),

          //price + rating
          SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                Text(
                  'S./',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600,
                  color: Colors.grey[700]),
                ),

                //rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(
                      food.rating,
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
