import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  static const routeName = "/product_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back),onPressed: () => Navigator.pop(context),)
        ],
      ),
    );
  }
}
