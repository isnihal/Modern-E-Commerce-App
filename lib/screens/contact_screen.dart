import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shape_of_view/shape_of_view.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ColumnSuper(
                    innerDistance: -80.0,
                    children: <Widget>[
                      ShapeOfView(
                          elevation: 4,
                          width: double.infinity,
                          height: 320,
                          shape: DiagonalShape(
                              position: DiagonalPosition.Bottom,
                              direction: DiagonalDirection.Left,
                              angle: DiagonalAngle.deg(angle: 10)
                          ),
                          child: Image.asset(
                            "assets/images/mac.jpg", fit: BoxFit.fill,
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 24),
                            height: 150,
                            width: 150,
                            child: ShapeOfView(
                              shape: CircleShape(
                              ),
                              child: Image.asset("assets/images/nihal.jpg",),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16,top: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text("Nihal Ismail",style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28
                                    ),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text("Freelance Developer",style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 16),
                          child: Text(
                            "Imagining your Business like this?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28
                              )
                          ),
                        ),
                        ListTile(
                          onTap: (){},
                          leading: Icon(FontAwesomeIcons.at,color: Colors.black87,),
                          title: Text("nihal@nihalismail.com"),
                        ),
                        ListTile(
                          onTap: (){},
                          leading: Icon(FontAwesomeIcons.whatsapp,color: Colors.green,),
                          title: Text("+91 7907136126"),
                        ),
                        ListTile(
                          onTap: (){},
                          leading: Icon(FontAwesomeIcons.globeAmericas,color: Colors.blue,),
                          title: Text("www.nihalismail.com",style: TextStyle(color: Colors.black),),
                        )
                      ],
                    )
                  )
                ]
            )
        )
    );
  }
}
