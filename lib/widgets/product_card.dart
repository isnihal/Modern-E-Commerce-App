import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Shoes.dart';

class ProductCard extends StatelessWidget {

  final Shoes shoes;
  final int cardNum;

  ProductCard({@required this.shoes,@required this.cardNum});

  @override
  Widget build(BuildContext context) {
    print("Fuck Yeah");
    return Container(
      width: ScreenUtil().setWidth(642),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: ScreenUtil().setHeight(40)
              ),
              child: Container(
                width: ScreenUtil().setWidth(620),
                height: ScreenUtil().setHeight(990),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: shoes.colors,
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
