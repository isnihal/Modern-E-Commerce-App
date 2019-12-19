import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/shoes.dart';

class ShopProvider with ChangeNotifier{

  List<Shoes> _products = [
    Shoes(
        name: "Pegasus 30",
        colors: [Colors.red[200],Colors.red],
        imageURL: "assets/images/nike1.png",
        price: 345
    ),
    Shoes(
        name: "Air Force",
        colors: [Colors.black,Colors.green],
        imageURL: "assets/images/nike2.png",
        price: 499
    ),
    Shoes(
        name: "Air Zoom",
        colors: [Colors.grey,Colors.black],
        imageURL: "assets/images/nike3.png",
        price: 300
    ),
    Shoes(
        name: "Air Max",
        colors: [Colors.white,Colors.red],
        imageURL: "assets/images/nike4.png",
        price: 345
    ),
    Shoes(
        name: "Air Jordan Max",
        colors: [Colors.white12,Colors.indigo],
        imageURL: "assets/images/nike5.png",
        price: 999
    ),
    Shoes(
        name: "Air Jordan 1",
        colors: [Colors.black,Colors.red],
        imageURL: "assets/images/nike6.png",
        price: 400
    ),
  ];

  List<Shoes> get products{
    return [..._products];
  }

  List<Shoes> _cart = [];
  List<Shoes> get cart{
    return[..._cart];
  }

  List<Shoes> _wishlist  = [];
  List<Shoes> get wishlist{
    return[..._wishlist];
  }

  void addToCart(Shoes shoe){
    _cart.add(shoe);
  }

  void removeFromCart(Shoes shoe){
    _cart.remove(shoe);
  }

  void addToWishList(Shoes shoe){
    _wishlist.add(shoe);
  }

  void removeFromWishList(Shoes shoe){
    _wishlist.remove(shoe);
  }
}