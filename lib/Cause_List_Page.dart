import 'package:altrueglobal/Cause_Details.dart';

import 't_shirts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Cause_List extends StatefulWidget {
  @override
  _Cause_ListState createState() => _Cause_ListState();
}

class _Cause_ListState extends State<Cause_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(32.0) ,
                child: Column(
                  children: [
                    Text('Causes', style: TextStyle(
                        fontSize: 44, color: Colors.black, fontWeight: FontWeight.w900
                    ),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            'T-Shirts', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ], onChanged: (value) {  },
                    )
                  ],
                ),
              ),
              Container(height: 500,
                padding: const EdgeInsets.only(left:32),
                child: Swiper(
                  itemCount:cause.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Colors.red,
                      color: Colors.black,
                      activeSize: 20,
                      space: 8,
                    ),
                  ),
                  itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, PageRouteBuilder(
                          pageBuilder: (context,a,b)=> Cause_Details(causes: cause[index],)
                        ));
                      },
                      child: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                              SizedBox(height: 100),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                elevation: 8,
                                color:Colors.white,child:
                              Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget> [
                                    SizedBox(height:100),
                                    Text(cause[index].causeName,
                                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600,color: Colors.black),
                                    textAlign: TextAlign.left,),
                                    Text('Altrue Cause',
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                                    textAlign: TextAlign.left,),
                                    SizedBox(height: 30,),
                                    Row(

                                      children: [
                                        Text('Learn More', textAlign: TextAlign.right, style: TextStyle(color: Colors.red),),
                                        Icon(Icons.arrow_forward, color: Colors.red,)
                                      ],
                                    )

                                  ],
                                ),
                              ),
                              )
                            ],
                          ),
                          Positioned(top:-17,width: 250, height:250,
                              child: Image.asset(cause[index].causeImage)),
                        ],
                      ),
                    );
                  },

                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}
