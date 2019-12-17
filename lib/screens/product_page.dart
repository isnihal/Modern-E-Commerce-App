import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class ProductPage extends StatelessWidget {

  static const routeName = "/product_page";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[

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
                      height: 510,
                      width: 540,
                      child: Image.asset("assets/images/nike1.png",)
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context),),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 75,
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: mediaQuery.size.width/2.25,
                      height: 75,
                      child:  Center(
                        child: Text(
                            "\$375",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 42
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 75,
                        width: 100,
                        child: Center(
                          child: Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              )
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
                            gradient: LinearGradient(
                              colors: [Colors.red,Colors.red[200]],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft
                            ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
