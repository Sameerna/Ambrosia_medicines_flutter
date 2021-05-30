import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_flutter/pages/product_details.dart';

class Products extends StatefulWidget {
  //const Productss({Key key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Pill 01',
      'picture':'images/products/pills_01.jpg',
      "price ": 150 ,
    },
    {
      'name': 'Pill 02',
      'picture':'images/products/pills_02.jpg',
      "price ": 250 ,
    },

    {
      'name': 'Pill 03',
      'picture':'images/products/pills_03.jpg',
      "price ": 30 ,
    },
      {
      'name': 'Pill 04',
      'picture':'images/products/pills_04.jpg',
      "price ": 45 ,
    },
      {
        'name': 'Pill 05',
        'picture':'images/products/pills_05.jpg',
        'price ':  20 ,
      },
      {
        'name': 'Pill 06',
        'picture': 'images/products/pills_06.jpg',
        'price ': 150 ,
      }

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context , int index){
          return Single_med(
          med_name: product_list[index]['name'],
          med_picture: product_list[index]['picture'],
          med_price: product_list[index]['price'],
          );
    });
  }
}
class Single_med extends StatelessWidget {
    final med_name;
    final med_picture;
    final med_price;

    Single_med({
       this.med_name,
       this.med_picture,
       this.med_price,
});

  //const Single_med({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: med_name,
          child: Material(
            child: InkWell(onTap: ()=> Navigator.of(context).push(
              new MaterialPageRoute(
                  //passing Values of the prodduct details
                  builder: (contect) => new ProductDetails(
                product_details_name: med_name,
                product_details_picture: med_picture,
                product_details_price: med_price,
              )
              )),
            child: GridTile(
              footer:
              Container(
                color: Colors.white70,
                child:
                ListTile(
                  leading: Text(med_name, style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ) ,
              child: Image.asset(med_picture,
               fit: BoxFit.cover,) ,
            ),),
          )),
    );
  }
}

