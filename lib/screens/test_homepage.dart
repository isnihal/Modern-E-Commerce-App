import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

class TestHomePage extends StatefulWidget {
  @override
  _TestHomePageState createState() => _TestHomePageState();
}

class _TestHomePageState extends State<TestHomePage> {
  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      colorTransition: Colors.white,
      borderRadius: 50, // default 0
      leftAnimationType: InnerDrawerAnimation.static, // default static
      rightAnimationType: InnerDrawerAnimation.quadratic,
      backgroundColor: Colors.white,
      innerDrawerCallback: (a) => print(a),
      offset: IDOffset.only(bottom: 0.05),
      proportionalChildArea: true,
      scale: IDOffset.horizontal(0.7),
      leftChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(child:Text("Home")),
          InkWell(child:Text("Home")),
          InkWell(child:Text("Home")),
          InkWell(child:Text("Home")),
          InkWell(child:Text("Home")),
        ],
      ),
        scaffold: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false
          ),
        )
    );
  }
}
