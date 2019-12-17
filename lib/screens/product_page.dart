import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class ProductPage extends StatelessWidget {

  static const routeName = "/product_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),),
                ),
                Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: ShapeOfView(
                          child: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.red[200], Colors.red],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text("01",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          shape: TriangleShape(
                              percentBottom: 0.5,
                              percentLeft: 0,
                              percentRight: 0
                          ),
                        )
                    ),
                    Container(
                      height: 610,
                      width: 640,
                      child: Image.asset("assets/images/nike1.png")
                    )
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
