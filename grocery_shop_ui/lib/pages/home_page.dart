

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_ui/components/grocery_item_tile.dart';
import 'package:grocery_shop_ui/model/cart_model.dart';
import 'package:grocery_shop_ui/pages/cart_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => 
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CartPage();
      },),),
      backgroundColor: const Color.fromARGB(255, 27, 122, 245),
      child: Icon(Icons.shopping_bag),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good Morning',
              style: GoogleFonts.poppins(
                fontSize: 18,
              ),),
              const SizedBox(height: 15,),
              Text('Let\'s order fresh items for you',
              style: GoogleFonts.poppins(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),),
              const SizedBox(height: 15,),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(height: 15,),
              Text('Categories',
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 15,),
              Expanded(
                child: Consumer<CartModel>(builder: (context, value, child){
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 2/3),
                     itemBuilder: (context, index){
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    tileColor: value.shopItems[index][3],
                  );
                });
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}