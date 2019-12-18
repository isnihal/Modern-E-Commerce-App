import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class ProductPage extends StatefulWidget {

  static const routeName = "/product_page";
  bool isFavorite = false;
  int selectedSize = 0;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var sizes = ["7","8","9","10"];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[

                Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: ShapeOfView(
                          child: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.red[200], Colors.red],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text("01",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          shape: TriangleShape(
                              percentBottom: 0.5,
                              percentLeft: 0,
                              percentRight: 0
                          ),
                        )
                    ),
                    Container(
                      height: 510,
                      width: 540,
                      child: Image.asset("assets/images/nike1.png",)
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context),),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                              "Pegasus 30",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28
                              )
                          ),
                          IconButton(
                            icon: widget.isFavorite? Icon(Icons.favorite):Icon(Icons.favorite_border,),
                            onPressed: (){
                              setState(() {
                                widget.isFavorite=!widget.isFavorite;
                              });
                            },
                          )
                        ],
                      )
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 80,
                        width: mediaQuery.size.width*0.9,
                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                        )
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                        width: mediaQuery.size.width*0.9,
                        child: Text("Sizes",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: sizes.map((item){
                          int currentButton  = sizes.indexOf(item);
                          return InkWell(
                            onTap: (){
                              setState(() {
                                widget.selectedSize = currentButton;
                              });
                            },
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(color: currentButton==widget.selectedSize? Colors.red:Colors.transparent,borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  item,style: TextStyle(color: currentButton==widget.selectedSize? Colors.white:Colors.black,fontWeight: FontWeight.w900,fontFamily: "Roboto",fontSize: 16),
                                ),
                              ),
                            ),
                          );
                        }).toList()
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 75,
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: mediaQuery.size.width/2.25,
                      height: 75,
                      child:  Center(
                        child: Text(
                            "\$375",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 42
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 75,
                        width: 100,
                        child: Center(
                          child: Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              )
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
                            gradient: LinearGradient(
                              colors: [Colors.red,Colors.red[200]],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft
                            ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
