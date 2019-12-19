import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ShapeOfView(
            elevation: 4,
            height: 300,
            shape: DiagonalShape(
                position: DiagonalPosition.Bottom,
                direction: DiagonalDirection.Left,
                angle: DiagonalAngle.deg(angle: 10)
            ),
            child: Image.asset(
              "assets/images/mac.jpg",fit: BoxFit.fill,
            )
        ),
      )
    );
  }
}
