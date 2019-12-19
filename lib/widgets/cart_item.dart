import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/shop_provider.dart';
import '../models/shoes.dart';

class CartItem extends StatelessWidget {

  final Shoes shoe;
  final int cardNum;
  final bool isWishlist;

  CartItem({@required this.cardNum,@required this.shoe,@required this.isWishlist});

  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var provider = Provider.of<ShopProvider>(context);

    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom:8
              ),
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: shoe.colors,
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,8),
                          blurRadius: 8
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "0${cardNum+1}",
                          style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                shoe.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),
                              Text(
                                "\$${shoe.price.toStringAsFixed(2)}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24
                                ),
                              ),
                            ],
                          ),)
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          shoe.imageURL,
                          width: 140,
                          height: 160,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: (){
                            if(isWishlist)provider.removeFromWishList(shoe);
                            else provider.removeFromCart(shoe);
                          },
                          icon: isWishlist?Icon(Icons.favorite,color: Colors.white,):Icon(Icons.delete,color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
