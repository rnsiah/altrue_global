import 'package:altrueglobal/Cause_List_Page.dart';
import 'package:altrueglobal/ShirtPage.dart';
import 'package:altrueglobal/Shirt_Screen.dart';
import 'package:altrueglobal/authPage.dart';
import 'package:altrueglobal/myQr.dart';
import 'package:flutter/material.dart';
import 'authPage.dart';
import 'homeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      title: 'Altrue Global',
      home: ShirtPage(),
    );
  }
}

