import 'package:ecommerce_template/provider/shop_provider.dart';
import 'package:ecommerce_template/screens/contact_screen.dart';
import 'package:ecommerce_template/screens/main_page.dart';
import 'package:ecommerce_template/screens/product_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ShopProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          ProductPage.routeName: (ctx)=>ProductPage(),
        },
        title: "Shop",
        home: MainPage(),
        theme: ThemeData(
            backgroundColor: Colors.white,
            fontFamily: 'Montserrat'
        ),
      ),
    );
  }
}