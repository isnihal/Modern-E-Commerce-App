import 'package:flutter/material.dart';

import 'package:ecommerce_template/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shop",
      home: HomePage(),
      theme: ThemeData(
        backgroundColor: Colors.white
      ),
    );
  }
}