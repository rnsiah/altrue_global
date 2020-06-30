import 'package:flutter/material.dart';
import 'cicular_clipper.dart';
import 't_shirts.dart';

class Shirt_Screen extends StatefulWidget {
  final Shirts shirts;
  Shirt_Screen({this.shirts});

  @override
  _Shirt_ScreenState createState() => _Shirt_ScreenState();
}

class _Shirt_ScreenState extends State<Shirt_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0),

              )
            ],
          )
        ],
      ),
    );
  }
}
