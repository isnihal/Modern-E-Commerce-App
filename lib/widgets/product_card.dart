import 'package:ecommerce_template/screens/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/shoes.dart';

class ProductCard extends StatelessWidget {

  final Shoes shoe;
  final int cardNum;

  ProductCard({@required this.shoe,@required this.cardNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(642),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: ScreenUtil().setHeight(40)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, ProductPage.routeName);
                },
                child: Container(
                  width: ScreenUtil().setWidth(620),
                  height: ScreenUtil().setHeight(990),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: shoe.colors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0,8),
                        blurRadius: 8
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: ScreenUtil().setWidth(40),
                        top: ScreenUtil().setHeight(50),
                        child: Text(
                          "0${cardNum+1}",
                          style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(45),
                            bottom: ScreenUtil().setHeight(45)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                shoe.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(20),
                              ),
                              Text(
                                "\$${shoe.price.toStringAsFixed(2)}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(25),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(75),
                                height: ScreenUtil().setHeight(75),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: shoe.colors[1],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: ScreenUtil().setHeight(60),
                        left: ScreenUtil().setWidth(-22),
                        child: Image.asset(
                          shoe.imageURL,
                          width: ScreenUtil().setWidth(640),
                          height: ScreenUtil().setHeight(610),
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
