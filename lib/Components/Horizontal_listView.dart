import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  //const HorizontalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          medicines(
            image_location: 'images/pill_001.png',
            image_caption: 'Pills',
          ),
          medicines(
            image_location: 'images/prec.jpg',
            image_caption: 'Prescription' ,
          ),
          medicines(
            image_location: 'images/lab.png',
            image_caption: 'Lab',
          )

        ],
      )
    );
  }
}

class medicines extends StatelessWidget {
 // const medicines({Key key}) : super(key: key);

   final String image_location;
  final String image_caption;

   medicines({
    required this.image_location,
    required this.image_caption
});

  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
      child: Container(
        width: 125.0,
        child: ListTile(
          title: Image.asset(image_location,
            width: 250.0,
            height: 250.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption, textScaleFactor: 1.30,),
          ),
        ),
      ),

    ),
    );
  }
}

