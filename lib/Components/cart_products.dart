import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
 //  const Cart_products({Key key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_cart = [
    {
      'name': 'Pill 01',
      'picture':'images/products/pills_01.jpg',
      "price ": 150,
      'dose' : '5mg',
    },
    {
      'name': 'Pill 02',
      'picture':'images/products/pills_02.jpg',
      "price ": 250 ,
      'dose' : '50mg',
    },

    {
      'name': 'Pill 03',
      'picture':'images/products/pills_03.jpg',
      "price ":  30 ,
      'dose' : '50mg',
    },
    {
      'name': 'Pill 04',
      'picture':'images/products/pills_04.jpg',
      "price ": 45 ,
      'dose' : '500mg',
    },
  ];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount:Products_on_cart.length,
      itemBuilder: (context,index){
        return Single_cart_product(
          cart_med_name: Products_on_cart[index]['name'],
          cart_med_picture: Products_on_cart[index]['picture'],
          cart_med_price: Products_on_cart[index]['price'],
          cart_med_dose: Products_on_cart[index]['dose'],
        );
      },);
  }
}

class Single_cart_product extends StatelessWidget {
 //  const Single_cart_product({Key key}) : super(key: key);
  final cart_med_name;
  final cart_med_picture;
  final cart_med_price;
  final cart_med_dose;

  Single_cart_product({
    this.cart_med_name,
    this.cart_med_picture,
    this.cart_med_price,
    this.cart_med_dose
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_med_picture, width: 80,height: 80,),
        // Title
        title: Text(cart_med_name),
        subtitle: Column(
          children: <Widget>[
            // row inside
            Row(
                children: <Widget>[
                  //Dose of the med 
                  Padding(padding: const EdgeInsets.all(8.0),
                      child: Text('Dose: '),
                  ),
                  Padding(padding: const EdgeInsets.all(8.0),
                    child: Text(cart_med_dose),
                  ),


                    // Text('${cart_med_price}')
                  // money
                  // Padding(padding: const EdgeInsets.fromLTRB(20, 8.0, 8.0, 8.0),
                  //   child: Text('Price: '),
                  //  ),
                  // Padding(padding: const EdgeInsets.fromLTRB(25, 8.0, 8.0, 8.0),
                  //   child: Text(cart_med_price),
                  //  ),

                ]

            )
          ],
        ),
      )
    );
  }
}

