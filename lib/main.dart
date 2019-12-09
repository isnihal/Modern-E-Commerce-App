import 'package:ecommerce_template/utils/profile_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

