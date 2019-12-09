import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandSelector extends StatefulWidget {

  final List<String> brands;

  BrandSelector({@required this.brands});

  @override
  _BrandSelectorState createState() => _BrandSelectorState();
}

class _BrandSelectorState extends State<BrandSelector> {

  int _currentIndex = 0;
  bool _isSelected;

  List<Widget> _buildShoeBrands(){
    return widget.brands.map((brand){
      var index = widget.brands.indexOf(brand);
      _isSelected = _currentIndex == index;
      return Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(75)),
        child: GestureDetector(
          child: Text(
            brand,
            style: TextStyle(
              color: _isSelected? Colors.black : Colors.grey,
              fontSize: _isSelected? 22 : 16,
              fontWeight: FontWeight.bold
              //TODO:CHANGE FONT FAMILY
            ),
          ),
          onTap: (){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildShoeBrands()
    );
  }
}
