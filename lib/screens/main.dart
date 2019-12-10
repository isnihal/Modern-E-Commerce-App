import 'package:ecommerce_template/screens/main_page.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_template/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shop",
      home: MainPage(),
      theme: ThemeData(
        backgroundColor: Colors.white
      ),
    );
  }
}