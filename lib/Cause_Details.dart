import 'package:altrueglobal/t_shirts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cause_Details extends StatelessWidget {
  final Causes causes;

  const Cause_Details({Key key, this.causes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: [
                  IconButton(
                    onPressed:  ()=> Navigator.pop(context),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.black,

                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 300,),
                        Text(causes.causeName ?? '',
                          style: TextStyle(
                          fontSize: 56, fontWeight: FontWeight.w900,
                        ),
                          textAlign: TextAlign.left,
                        ),
                        Text('Altrue Cause',style: TextStyle(
                          fontSize: 35, fontWeight: FontWeight.w300
                        ) ,
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  Text('Gallery', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  Divider(color: Colors.black38,),
                  SizedBox(height: 30),
                  Text(causes.causeInformation ?? '', maxLines: 5, overflow: TextOverflow.ellipsis, style: TextStyle(
                    fontSize: 28, color: Colors.black45, fontWeight: FontWeight.w500
                  ),
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Card(child: Image.asset(null)

                      );
                    },),
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
