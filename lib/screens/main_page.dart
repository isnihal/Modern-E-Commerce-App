import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ecommerce_template/screens/home_page.dart';
import 'package:ecommerce_template/screens/test_homepage.dart';
import 'package:ecommerce_template/screens/favorite.dart';
import 'package:ecommerce_template/screens/profile.dart';
import 'package:rect_getter/rect_getter.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {

  int _currentTabIndex = 0;
  List<Widget> _children;

  final bottomBarModels = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.favorite,),),
    BottomNavigationBarItem(icon: Icon(Icons.home),),
    BottomNavigationBarItem(icon: Icon(Icons.person,),)
  ];


  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    _children = [
      Favorite(),
      TestHomePage(),
      Profile()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var bottomBarItems = <BottomNavigationBarItem>[];
    for(int i=0;i<bottomBarModels.length;i++){
      bottomBarItems.add(
        BottomNavigationBarItem(
          icon: RectGetter(
            key: GlobalKey(),
            child: bottomBarModels[i].icon,
          ),
          title: Container(

          )
        )
      );
    }

    void _onTab(int index){
      setState(() {
        _currentTabIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _children[_currentTabIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 6),
        child: Stack(
          children: <Widget>[
            BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedIconTheme: IconThemeData(
                color: Colors.black,
                size: 26
              ),
              currentIndex: _currentTabIndex,
              items: bottomBarItems,
              onTap: _onTab,
            )
          ],
        ),
      ),
    );
  }
}
