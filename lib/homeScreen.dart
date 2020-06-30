import 'package:altrueglobal/Atrocity_Screen.dart';
import 'package:altrueglobal/Cause_List_Page.dart';
import 'package:altrueglobal/myQr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 't_shirts.dart';
import 'contentScroll.dart';


class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {

  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
    super.initState();
  }

  _shirtSelector(int index){
    return AnimatedBuilder(animation: _pageController, builder: (BuildContext context, Widget widget){
      double value = 1;
      if (_pageController.position.haveDimensions){
        value = _pageController.page - index;
        value = (1 - (value.abs() * 0.3) + 0.6).clamp(0.0, 1.0);
      }
      return Center(child: SizedBox(
        height: Curves.easeInOut.transform(value) * 270.0,
        width: Curves.easeInOut.transform(value) * 400,
        child: widget,
        

      ),
      );
    },
      // This section is coded for the Top part of UI- The Atrocity List can be populated from the atrocity class
      //This section shows all the new atrocities going on in the world in real time
      child: GestureDetector(
        onTap: ()=> Navigator.push(
            context, MaterialPageRoute(
          builder: (_) => Atrocity_Screen(atrocities: atrocityList[index],)
        )),
        child: Stack(children: <Widget>[
          Center(child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0.0, 4.0),
                blurRadius: 10.0,
              ),
            ],
            ),
            child: Center(child: Hero(tag: atrocityList[index].image,
            child: ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image(image: AssetImage(atrocityList[index].image),
              height: 220.0,
              fit: BoxFit.fill,
            ),
            ),
            ),
            ),

          ),),
          Positioned(
            left: 30,
            bottom: 40,
            child: Text(atrocityList[index].title.toUpperCase(), style: TextStyle(
            fontSize: 18,
            color: Colors.white,
              fontWeight: FontWeight.w800
          ),
          ),
          )
        ],),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45.0,
                    backgroundImage: null,
                  ),
                  Text('Name'),
                  Text('@Username')
                ],
              ),
            ),
              Card(
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('My Profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                onTap: ()=> print('Taking You to my profile page'),
              ),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.favorite, color: Colors.black),
                  title: Text('My Causes', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  onTap: ()=> print('Taking You to my causes page'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.camera, color: Colors.black),
                title: Text('My Altrue Code', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                onTap: (){
                  
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>myQRHome()
                    )
                    );
                  });
                },
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Image(
          image: AssetImage('images/ALTRUE LOGO OFFICIAL.png'),
          height: 30,
          width: 120,
          fit: BoxFit.contain,
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 18),
          onPressed: ()=> print('Menu'),
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 18),
            onPressed: ()=> print('Search'),
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.black,
          ),

        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: shirtList.length,
              itemBuilder: (BuildContext context, int index){
                return _shirtSelector(index);
              },
            ),
          ),
          Container(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: labels.length,
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Cause_List()
                    )
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.black12]
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(labels[index].toUpperCase(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.4,
                      ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ContentScroll(images:newShirts, title: "Altrue's Collection Of The Week", imageHeight: 300, imageWidth: 150.0),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
