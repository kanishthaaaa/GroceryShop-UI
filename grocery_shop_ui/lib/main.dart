import 'package:flutter/material.dart';
import 'package:grocery_shop_ui/model/cart_model.dart';
import 'package:grocery_shop_ui/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}
