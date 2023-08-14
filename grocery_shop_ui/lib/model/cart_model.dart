import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  //list of item on sale

  final List _shopItems =[
    ['Bananas', '2.50', 'lib/images/bananas.png', const Color.fromARGB(255, 239, 228, 136)],
    ['Cabbage', '4.50', 'lib/images/cabbage.png', Color.fromARGB(255, 164, 243, 166)],
    ['Carrot', '3.45', 'lib/images/carrot.png', Color.fromARGB(255, 235, 190, 122)],
    ['Cereals', '4', 'lib/images/cereals.png', const Color.fromARGB(255, 235, 231, 203)],
    ['Milk', '3.99', 'lib/images/milk-bottle.png', const Color.fromARGB(255, 235, 231, 203)],
  ];
get shopItems => _shopItems;
}