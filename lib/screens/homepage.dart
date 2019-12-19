import 'package:ecommerce_template/screens/contact_screen.dart';
import 'package:ecommerce_template/screens/wishlist_screen.dart';
import 'package:ecommerce_template/utils/profile_clipper.dart';
import 'package:ecommerce_template/widgets/brand_selector.dart';
import 'package:ecommerce_template/widgets/product_banner.dart';
import 'package:ecommerce_template/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/shoes.dart';

import 'package:flutter_inner_drawer/inner_drawer.dart';

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

  //  Current State of InnerDrawerState
  final GlobalKey<InnerDrawerState> _innerDrawerKey = GlobalKey<InnerDrawerState>();


  int _currentSelectedDrawerButtonIndex = 0;

  List<Widget> _createDrawerButtons(){
    List _drawerButtonTexts = ["Home","Wishlist"];
    List<FlatButton> _drawerButtons = [];
    for(int i=0;i<_drawerButtonTexts.length;i++) {
      if (i == _currentSelectedDrawerButtonIndex) {
        FlatButton flatButton = FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Align(alignment:Alignment.centerLeft,child: Text(_drawerButtonTexts[i],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),textAlign: TextAlign.left,)),
          onPressed: (){
            setState(() {
              _currentSelectedDrawerButtonIndex = i;
            });
          }
        );
        _drawerButtons.add(flatButton);
      }
      else{
        FlatButton flatButton = FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(alignment:Alignment.centerLeft,child: Text(_drawerButtonTexts[i],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16,),textAlign: TextAlign.left,)),
          onPressed: (){
            setState(() {
              _currentSelectedDrawerButtonIndex = i;
            });
          },
        );
        _drawerButtons.add(flatButton);
      }
    }
    return _drawerButtons;
  }

  @override
  Widget build(BuildContext context) {
    void _toggle() {
      _innerDrawerKey.currentState.toggle(
        // direction is optional
        // if not set, the last direction will be used
        //InnerDrawerDirection.start OR InnerDrawerDirection.end
        //direction: InnerDrawerDirection.end
      );
    }

    ScreenUtil.instance = ScreenUtil(
        width: 1080,
        height: 2220,
        allowFontScaling: true
    )
      ..init(context);
    return InnerDrawer(
      key: _innerDrawerKey,
      boxShadow: [BoxShadow(color: Colors.transparent)],
      colorTransition: Colors.white,
      borderRadius: 50,
      // default 0
      leftAnimationType: InnerDrawerAnimation.static,
      // default static
      rightAnimationType: InnerDrawerAnimation.quadratic,
      backgroundColor: Colors.white,
      innerDrawerCallback: (a) => print(a),
      offset: IDOffset.only(bottom: 0.05),
      proportionalChildArea: true,
      scale: IDOffset.horizontal(0.7),
      leftChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: _createDrawerButtons()
      ),
      scaffold: _currentSelectedDrawerButtonIndex == 1
          ? WishListScreen(_toggle)
          : Scaffold(
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
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
                      onPressed: () {
                        _toggle();
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
                  "Explore",
                  style: TextStyle(color: Colors.black87,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              BrandSelector(
                  brands: ["Nike", "Adidas", "Puma", "Asics"]
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(1050),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: products.length - 1,
                  itemBuilder: (context, index) {
                    Shoes shoes = products[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(30),
                      ),
                      child: ProductCard(
                          shoe: shoes,
                          cardNum: index
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(60),
              ),
              ProductBanner(products[products.length-1],products.length-1)
            ],
          ),
        ),
      ),
    );
  }
}
