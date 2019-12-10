import 'package:flutter/material.dart';
import 'package:ecommerce_template/models/shoes.dart';
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
              ),
              boxShadow: [
                BoxShadow(
                color: Colors.black12,
                offset: Offset(0,4),
                blurRadius: 4
              ),
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0,-6),
                  blurRadius: 4
                )
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  shoes.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(22),
                ),
                Text(
                  "\$${shoes.price}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(-85),
            right: ScreenUtil().setWidth(30),
            child: Image.asset(
              shoes.imageURL,
              width: ScreenUtil().setWidth(610),
              height: ScreenUtil().setHeight(550),
            ),
          )
        ],
      ),
    );
  }
}
