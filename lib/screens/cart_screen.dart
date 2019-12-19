import 'package:ecommerce_template/widgets/cart_item.dart';
import 'package:ecommerce_template/widgets/product_card.dart';
import 'package:flutter/material.dart';
import '../models/shoes.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    List<Shoes> products = [
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


    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Stack(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                  child: Align(
                    alignment: Alignment.center,
                    child:Text("Your Cart",style:TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                    ) ,),),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GridView.builder(
                    itemCount: products.length,
                    padding: EdgeInsets.all(8),
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 16,
                      childAspectRatio: 2/2.75
                    ),
                    itemBuilder: (ctx,index){
                      return CartItem(cardNum: index,shoe: products[index],);
                    },
                  )
                ),
                Container(
                  height: mediaQuery.size.height/4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Shipping", style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            )),
                            Text("\$29", style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Tax(15%)", style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            )),
                            Text("\$20", style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Total", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 28
                            )),
                            Text("\$249", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 28
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ),
          InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black),
              child: Center(
                child: Text("Checkout", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
