import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/shoes.dart';

class ShopProvider with ChangeNotifier{

  Shoes selectedShoe;

  double get totalSum {
    if (_cart.isEmpty)
      return 0;
    else {
      double sum = 0;
      _cart.forEach((shoe) {
        sum += shoe.price;
      });
      return sum;
    }
  }

  double get shippingFee{
    if(_cart.isEmpty) return 0;
    else return  _cart.length*4.5;
  }

  double get tax{
    if(_cart.isEmpty) return 0;
    else return totalSum  * 0.15;
  }

  double get totalAmount{
    if(_cart.isEmpty) return 0;
    else return totalSum+tax+shippingFee;
  }

  int _selectedBrand;

  void setSelectedBrand(int value){
    _selectedBrand = value;
    notifyListeners();
  }

  List<Shoes> _nike = [
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

  List<Shoes> _adidas = [
    Shoes(
        name: "Ultraboost",
        colors: [Colors.pink[50],Colors.black],
        imageURL: "assets/images/adidas1.png",
        price: 645
    ),
    Shoes(
        name: "Adizero",
        colors: [Colors.white12,Colors.red],
        imageURL: "assets/images/adidas2.png",
        price: 199
    ),
    Shoes(
        name: "Alpha Bounce",
        colors: [Colors.white12,Colors.orange],
        imageURL: "assets/images/adidas3.png",
        price: 200
    ),
    Shoes(
        name: "Solar Drive",
        colors: [Colors.white12,Colors.pink],
        imageURL: "assets/images/adidas4.png",
        price: 315
    ),
    Shoes(
        name: "Vigor",
        colors: [Colors.black,Colors.blueAccent],
        imageURL: "assets/images/adidas5.png",
        price: 399
    ),
    Shoes(
        name: "Running Blade",
        colors: [Colors.grey,Colors.blue],
        imageURL: "assets/images/adidas6.png",
        price: 800
    ),
  ];

  List<Shoes> _newBalance = [
    Shoes(
        name: "990 v4",
        colors: [Colors.grey[200],Colors.grey],
        imageURL: "assets/images/nb1.png",
        price: 199
    ),
    Shoes(
        name: "1080 v6",
        colors: [Colors.red,Colors.lightBlueAccent],
        imageURL: "assets/images/nb2.png",
        price: 500
    ),
    Shoes(
        name: "Arishi",
        colors: [Colors.white12,Colors.black],
        imageURL: "assets/images/nb3.png",
        price: 245
    )
  ];

  List<Shoes> _skechers = [
    Shoes(
        name: "Ultra Road",
        colors: [Colors.black,Colors.red],
        imageURL: "assets/images/skechers1.png",
        price: 300
    ),
    Shoes(
        name: "Razor 3",
        colors: [Colors.lightBlueAccent,Colors.pink],
        imageURL: "assets/images/skechers2.png",
        price: 269
    ),
    Shoes(
        name: "Go Run",
        colors: [Colors.white12,Colors.black87],
        imageURL: "assets/images/skechers3.png",
        price: 150
    ),
  ];

  List<Shoes> get products{
    switch(_selectedBrand){
      case 0: return [..._nike];
      case 1: return [..._adidas];
      case 2: return [..._newBalance];
      case 3: return [..._skechers];
    }
    return [..._nike];
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
    if(!_cart.contains(shoe)) _cart.add(shoe);
  }

  void removeFromCart(Shoes shoe) {
    _cart.remove(shoe);
    notifyListeners();
  }

  void addToWishList(Shoes shoe){
    _wishlist.add(shoe);
  }

  void removeFromWishList(Shoes shoe){
    print("Remove from wishlist");
    _wishlist.remove(shoe);
    notifyListeners();
  }

  bool isShoesInCart(Shoes shoe){
    for(int i=0;i<_cart.length;i++){
      Shoes obj = _cart[i];
      if(shoe.name == obj.name){
        return true;
      }
    }
    return false;
  }

  bool isShoesInWishlist(Shoes shoe){
    for(int i=0;i<_wishlist.length;i++){
      Shoes obj = _wishlist[i];
      if(shoe.name == obj.name){
        return true;
      }
    }
    return false;
  }
}