import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color tileColor;
  const GroceryItemTile(
      {super.key,
      required this.imagePath,
      required this.itemName,
      required this.itemPrice,
      required this.tileColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              imagePath,
              height: 80,
            ),
            //item name
            Text(
              itemName,
              style: GoogleFonts.poppins(
                fontSize: 30,
              ),
            ),
            //price
            MaterialButton(onPressed: (){},
            color: tileColor,
            child: Text('\$'+itemPrice,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w700
            ),),
            ),
          ],
        ),
      ),
    );
  }
}
