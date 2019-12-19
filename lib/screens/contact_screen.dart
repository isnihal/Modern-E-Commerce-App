import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ColumnSuper(
                    innerDistance: -80.0,
                    children: <Widget>[
                      ShapeOfView(
                          elevation: 4,
                          width: double.infinity,
                          height: 320,
                          shape: DiagonalShape(
                              position: DiagonalPosition.Bottom,
                              direction: DiagonalDirection.Left,
                              angle: DiagonalAngle.deg(angle: 10)
                          ),
                          child: Image.asset(
                            "assets/images/mac.jpg", fit: BoxFit.fill,
                          )
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          height: 150,
                          width: 150,
                          child: ShapeOfView(
                            shape: CircleShape(
                            ),
                            child: Image.asset("assets/images/nihal.jpg",),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 16),
                          child: Text(
                            "Imagining your Business like this?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28
                              )
                          ),
                        )
                      ],
                    )
                  )
                ]
            )
        )
    );
  }
}
