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
                  child: IconButton(icon: Icon(Icons.arrow_back),onPressed: () => Navigator.pop(context),),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ShapeOfView(
                    child: Container(
                      height: 300,
                      width: 300,
                      color: Colors.redAccent,
                    ),
                    shape: TriangleShape(
                        percentBottom: 0.5,
                        percentLeft: 0,
                        percentRight: 0
                    ),
                  )
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
