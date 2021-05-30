import 'package:flutter/material.dart';

import 'package:medical_flutter/Components/cart_products.dart';
class Cart extends StatefulWidget {
  // const Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new  AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Ambrosia Baliza Cart'),
        actions: <Widget>[
          new IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp, color: Colors.white)),
          // new IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Colors.white))
        ],
      ),
      body: new Cart_products(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text(' Total: '),
                subtitle: Text('Rs 500 '),
              ),
            ),
            Expanded(child: MaterialButton(onPressed: (){},
            child: Text('Check out', style: TextStyle(color: Colors.white)),
            color: Colors.deepPurpleAccent))
          ],
        ),
      ),
    );
  }
}
