import 'package:flutter/material.dart';
import 'package:ecommerce_template/shoes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductBanner extends StatelessWidget {

  final Shoes shoes;

  ProductBanner(this.shoes);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(415),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(70),
              vertical: ScreenUtil().setHeight(48)
            ),
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(60),
              left: ScreenUtil().setWidth(50)
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFEB692),
                  Color(0xFFEA5455)
                ]
              )
            ),
          )
        ],
      ),
    );
  }
}
