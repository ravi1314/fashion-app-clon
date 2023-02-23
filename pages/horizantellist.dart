// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Horizantel extends StatelessWidget {
  const Horizantel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Categrios(image_location: "asset/image/d1.png", image_caption: 'Dress',),
         Categrios(image_location: "asset/image/s1.png", image_caption: 'Shirt',),
          Categrios(image_location: "asset/image/su1.png", image_caption: 'dress',),
         Categrios(image_location: "asset/image/t1.png", image_caption: 'dress',),
          Categrios(image_location: "asset/image/shose1.png", image_caption: 'dress',),
          Categrios(image_location: "asset/image/p1.png", image_caption: 'dress',),
          Categrios(image_location: "asset/image/v1.png", image_caption: 'dress',),
          Categrios(image_location: "asset/image/a1.png", image_caption: 'dress',),
          Categrios(image_location: "asset/image/c1.png", image_caption: 'dress',)
        ],

      ),
    );
  }
}


class Categrios extends StatelessWidget {
  final String image_location;
  final String image_caption;
  const Categrios({Key? key, required this.image_location, required this.image_caption}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
     return Padding(padding: EdgeInsets.all(2.0),

     child: InkWell(
       onTap: () {
         
       },
       child: Container(
         width: 100,
         child: ListTile(
           title: Image.asset(image_location,width: 100,height: 80,),
           subtitle: Text(image_caption,textAlign: TextAlign.center,),

         ),
       ),
     ),
    // ignore: prefer_const_constructors
  
    
    );
  }
}