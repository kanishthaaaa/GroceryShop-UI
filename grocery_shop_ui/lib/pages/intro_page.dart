import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_ui/pages/home_page.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('lib/images/shopping-bag.png',
            height: 300,),
          SizedBox(height: 60,),
          Text('We deliver\ngrocery at your\ndoorstep',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 30,
          ),
          Text('Gogrocery gives you fresh vegetables and fruits, order fresh items from Gogrocery.',
          textAlign: TextAlign.center,
          style:GoogleFonts.poppins(
            fontSize: 18,
            color: const Color.fromARGB(255, 119, 118, 118),
          ) ,),
          const SizedBox(height: 35,),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),)) ,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 27, 122, 245),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text('Get Started',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                ),),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}