import 'package:flutter/material.dart';
import 't_shirts.dart';

class PovertyShirtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
                crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.8,
            children: <Widget>[

            ],),
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added, bool isFavorite, context){
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow:[ BoxShadow(
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            )
            ],
            color: Colors.white
            ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorite ? Icon(Icons.favorite, color: Colors.black,):
                        Icon(Icons.favorite_border, color: Colors.black,)
                  ],
                ),
              ),
              Hero(
                  tag:imgPath,
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain
                    ),

                  ),

                ),
              )
            ],
          ),
          ),
        ),
      );
  }
}
