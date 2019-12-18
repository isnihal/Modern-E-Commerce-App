import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){},),
                ),
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
