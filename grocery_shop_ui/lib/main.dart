import 'package:flutter/material.dart';
import 'package:grocery_shop_ui/pages/intro_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroPage(),
    );
  }
}
