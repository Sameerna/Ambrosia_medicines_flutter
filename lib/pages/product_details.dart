import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_picture;
  final product_details_price;

  ProductDetails({
   this.product_details_name,
   this.product_details_picture,
   this.product_details_price,
});
  //const ProductDetails({Key key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new  AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Ambrosia Baliza'),
        actions: <Widget>[
          new IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp, color: Colors.white))
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child:Container(
                  color:Colors.white,
                child: Image.asset(widget.product_details_picture),
                ),
              footer: new Container(
                color: Colors.white,
                    child: ListTile(
                  leading: new Text(widget.product_details_name,
                  style: TextStyle(fontWeight:FontWeight.bold, fontSize: 17.0 ),),

              ),
              ),
            ),
          ),
            Row(children: <Widget>[
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return new AlertDialog(
                    title: new Text('Dosage'),
                    content: Text('As prescribed by the Doctor'),
                    actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text('Exit') ,),

                    ],
                    //content: Text('Moderate 50 mg'),
                    //content: Text('Heavy 500 mg'),
                  );
                });
              },
              color:Colors.white ,
              textColor: Colors.grey,
              child: Row(
                children: <Widget>[
                  Expanded(child: new Text('Dosage')),
                  Expanded(child: new Icon(Icons.arrow_drop_down)),

                ],
              ),
              ),
              ),
            ],
            ),
          Row(children: <Widget>[
            Expanded(child: MaterialButton(onPressed: (){},
              color:Colors.deepPurpleAccent ,
              textColor: Colors.grey,
              child: new Text('Buy now'),
            ),
            ),
            new IconButton(

                onPressed: (){}, icon: Icon(Icons.add_shopping_cart_sharp,
                color: Colors.deepPurpleAccent)),

          ],
          ),
        Divider( color: Colors.deepPurpleAccent,),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: new ListTile(
            title: Text('Medical Description',textScaleFactor: 1.5,),
            subtitle: Text('Is a syrup with Ondansetron as its active ingredient.It is mainly used to treat vomiting and nausea caused due to surgery, chemotherapy and radiation.', textScaleFactor: 1.5,),
          ),
        ),
          // Divider( color: Colors.deepPurpleAccent,),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Trade(Medicine) Name: ",textScaleFactor: 1.5,),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text(widget.product_details_name, textScaleFactor: 1.5,) ,)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Expiry date: ",textScaleFactor: 1.5,),),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text('DD/MM/YYYY', textScaleFactor: 1.5,) ,)
            ],
          )
        ],
      ),
    );
  }
}
