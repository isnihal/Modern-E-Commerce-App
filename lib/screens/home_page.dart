import 'package:ecommerce_template/utils/profile_clipper.dart';
import 'package:ecommerce_template/widgets/brand_selector.dart';
import 'package:ecommerce_template/widgets/product_banner.dart';
import 'package:ecommerce_template/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/shoes.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Shoes> products = [
    Shoes(
        name: "Pegasus 30",
        colors: [Colors.red[200],Colors.red],
        imageURL: "assets/images/nike1.png",
        price: 345
    ),
    Shoes(
        name: "Air Force",
        colors: [Colors.black,Colors.green],
        imageURL: "assets/images/nike2.png",
        price: 499
    ),
    Shoes(
        name: "Air Zoom",
        colors: [Colors.grey,Colors.black],
        imageURL: "assets/images/nike3.png",
        price: 300
    ),
    Shoes(
        name: "Air Max",
        colors: [Colors.white,Colors.red],
        imageURL: "assets/images/nike4.png",
        price: 345
    ),
    Shoes(
        name: "Air Jordan Max",
        colors: [Colors.white12,Colors.indigo],
        imageURL: "assets/images/nike5.png",
        price: 999
    ),
    Shoes(
        name: "Air Jordan 1",
        colors: [Colors.black,Colors.red],
        imageURL: "assets/images/nike6.png",
        price: 400
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        width: 1080,
        height: 2220,
        allowFontScaling: true
    )..init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(40),
                left: ScreenUtil().setHeight(40),
                right: ScreenUtil().setHeight(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: (){

                    },
                  ),
                  ClipOval(
                    clipper: ProfileClipper(),
                    child: Image.asset("assets/images/nihal.jpg",
                      width: ScreenUtil().setWidth(160),
                      height: ScreenUtil().setHeight(160),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(60),
                left: ScreenUtil().setWidth(70),
                bottom: ScreenUtil().setHeight(105),
              ),
              child: Text(
                //TODO:CHANGE FONT FAMILY
                "Explore",
                style: TextStyle(color: Colors.black87,fontSize: 32,fontWeight: FontWeight.bold),
              ),
            ),
            BrandSelector(
                brands: ["Nike","Adidas","Puma","Asics"]
            ),
            SizedBox(
              height: ScreenUtil().setHeight(50),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(1050),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: products.length-1,
                itemBuilder: (context,index){
                  Shoes shoes = products[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(30),
                    ),
                    child: ProductCard(
                        shoe:shoes,
                        cardNum: index
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(60),
            ),
            ProductBanner(products[5])
          ],
        ),
      ),
    );
  }
}

