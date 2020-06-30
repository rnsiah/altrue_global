import 'package:altrueglobal/contentScroll.dart';
import 'package:flutter/material.dart';
import 't_shirts.dart';
import 'cicular_clipper.dart';

class Atrocity_Screen extends StatefulWidget {
  final Atrocities atrocities;

  Atrocity_Screen({this.atrocities});

  @override
  _Atrocity_ScreenState createState() => _Atrocity_ScreenState();
}

class _Atrocity_ScreenState extends State<Atrocity_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0.0, -50, 0.0),
                child: Hero(
                  tag: widget.atrocities.image,
                  child: ClipShadowPath(
                    clipper: CircularClipper(),
                    shadow: Shadow(blurRadius: 20.0),
                    child: Image(
                      height: 400.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.atrocities.image),
                    ),

                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left:30),
                    onPressed: ()=> Navigator.pop(context),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                  Image(image:AssetImage('images/Altrue Logo White.png'),
                  fit: BoxFit.scaleDown,
                  height: 60,
                  width: 150,),
                  IconButton(
                    padding: EdgeInsets.only(left:20),
                    onPressed: ()=> print('Add to favorites'),
                    icon: Icon(Icons.favorite),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              Positioned.fill(
                bottom: 10.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RawMaterialButton(
                    elevation: 12.0,
                    padding: EdgeInsets.all(10),
                    onPressed: ()=> print('Play Video'),
                    shape: CircleBorder(),
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.play_arrow,
                      size: 60.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0, left: 20.0,
                child: IconButton(
                  onPressed: ()=> print("I'm Sharing This"),
                  icon: Icon(Icons.share),
                  iconSize: 40.0,
                  color: Colors.black,
                ),
              ),
              Positioned(
                bottom: 0.0, right: 25.0,
                child: IconButton(
                  onPressed: ()=> print("I'm adding This to my list"),
                  icon: Icon(Icons.add),
                  iconSize: 40.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Text(
                  widget.atrocities.title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text('REGION:' + widget.atrocities.region.toUpperCase()),
                SizedBox(height: 10),
                Container(
                  height: 140,
                  child: SingleChildScrollView(
                    child: Text(
                      widget.atrocities.info,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                ContentScroll(
                  title: 'Support This Cause',
                  images: widget.atrocities.shirts,
                  imageHeight: 200.0,
                  imageWidth: 260.0,


                ),

              ],
            ),
          )
        ],
      ),

    );
  }
}
