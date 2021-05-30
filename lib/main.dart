import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
// internal
import 'package:medical_flutter/Components/Horizontal_listView.dart';
import 'package:medical_flutter/Components/products.dart';
import 'package:medical_flutter/pages/cart.dart';


void main(){
  runApp(
      MaterialApp(
        home:HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 250.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/hand_med.jpg'),
        AssetImage('images/mask_01.jpg'),
        AssetImage('images/vac_01.jpg'),

      ],
      // autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 6.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
  );

    return Scaffold(
      appBar:new  AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Ambrosia Baliza'),
        actions: <Widget>[
          new IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp, color: Colors.white)),
          new IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          }, icon: Icon(Icons.shopping_cart_outlined,color: Colors.white))
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
             // Header
            new UserAccountsDrawerHeader(accountName:Text('Samantha') ,
                accountEmail: Text('sam@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white)
              )
            ),
              decoration: new BoxDecoration(
                color: Colors.deepPurpleAccent
              ) ,
            ),
            // body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home, color: Colors.deepPurpleAccent,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('My Cart'),
                leading: Icon(Icons.shopping_cart_sharp, color: Colors.deepPurpleAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket_outlined, color: Colors.deepPurpleAccent,),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[

          image_carousel,
          new Padding(padding: const  EdgeInsets.all(12.0),
             child: new Text('Medicines', textScaleFactor: 2.0,)),

          // Horizontal List View
          HorizontalList(),
          new Padding(padding: const  EdgeInsets.all(28.0),
              child: new Text('Recommended Pills', textScaleFactor: 1.7,)),

          //grid view

          Container(
            height:320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}


