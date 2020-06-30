import 'package:altrueglobal/PovertyShirtPage.dart';
import 'package:flutter/material.dart';

class ShirtPage extends StatefulWidget {
  @override
  _ShirtPageState createState() => _ShirtPageState();
}

class _ShirtPageState extends State<ShirtPage> with
SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(icon:Icon(Icons.arrow_back), color: Colors.black,),
        title: Text('Altrue Classics', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_none, color: Colors.black),
          onPressed: (){},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left:20),
        children: <Widget>[
          SizedBox(height: 15,),
          TabBar(controller: _tabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          isScrollable: true,
          labelPadding: EdgeInsets.only(right:45),
              unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              child: Text('Poverty', style: TextStyle(fontSize: 21),),
            ),
            Tab(
              child: Text('Animals', style: TextStyle(fontSize: 21),),
            ),
            Tab(
              child: Text('Refugees', style: TextStyle(fontSize: 21),),
            ),
            Tab(
              child: Text('Peace & Justice', style: TextStyle(fontSize: 21),),
            ),
            Tab(
              child: Text('Climate Action', style: TextStyle(fontSize: 21),),
            ),
            Tab(
              child: Text('Clean Water', style: TextStyle(fontSize: 21),),
            )

          ],),
          Container(
            height: MediaQuery.of(context).size.height - 20,
            width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: [
                  PovertyShirtPage(),
                  PovertyShirtPage(),
                  PovertyShirtPage(),
                  P
                ],
              ),
          )

        ],
      ),
    );
  }
}
