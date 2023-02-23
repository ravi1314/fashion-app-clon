// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:carousel_pro/carousel_pro.dart';
import 'package:fashion_hub/pages/horizantellist.dart';
import 'package:fashion_hub/pages/product.dart';
import 'package:flutter/material.dart' show AppBar, AssetImage, BoxDecoration, BoxFit, BuildContext, CircleAvatar, Colors, Container, Curves, Divider, Drawer, GestureDetector, Icon, IconButton, Icons, InkWell, Key, ListTile, ListView, Scaffold, State, StatefulWidget, Text, UserAccountsDrawerHeader, Widget;
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names, unused_local_variable
    Widget image_carousel = new Container(
      height: 250,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('asset/image/f5.jpg'),
          AssetImage('asset/image/f1.png'),
           AssetImage('asset/image/f4.jpg'),
             AssetImage('asset/image/f2.jpg'),
          
        ],
        autoplay: false,
        indicatorBgPadding: 4,
        dotSize: 4,
        dotColor: Colors.red,
       // animationCurve:Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000 ),
      ),

    );
    

    return Scaffold(
      backgroundColor: Colors.white,
      
         appBar: AppBar(
           elevation: 0.3,
           backgroundColor: Colors.red,
           title: Text("fashion"),
           actions: [
             IconButton(onPressed: (){}, icon: Icon(Icons.search)),
             IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
           ],
         ),
         drawer: Drawer(
           child: ListView(
             
             children: [
               UserAccountsDrawerHeader(
                 currentAccountPicture: GestureDetector(child:CircleAvatar(backgroundColor: Colors.black,
                 child: Icon(Icons.person,color: Colors.red,),),),
                 decoration: BoxDecoration(
                   color: Colors.red
                 ),
                 accountName: Text("ravi sakariya"), accountEmail: Text("ravisakariya909@gmail.com"),
                 ),
                 InkWell(
                   onTap: (){},
                   child: ListTile(
                     title: Text("HomePage"),
                     leading: Icon(Icons.home,color: Colors.red,),
                   ),
                 ),
                  InkWell(
                   onTap: (){},
                   child: ListTile(
                     title: Text("MyAccount"),
                     leading: Icon(Icons.person,color: Colors.red,),
                   ),
                 ),
                  InkWell(
                   onTap: (){},
                   child: ListTile(
                     title: Text("My Orders"),
                     leading: Icon(Icons.shopping_basket,color: Colors.red,),
                   ),
                 ),
                  InkWell(
                   onTap: (){},
                   child: ListTile(
                     title: Text("Categoris"),
                     leading: Icon(Icons.dashboard,color: Colors.red,),
                   ),
                 ),
                  InkWell(
                   onTap: (){},
                   child: ListTile(
                     title: Text("Favorite"),
                     leading: Icon(Icons.favorite,color: Colors.red,),
                   ),
                 ),
                 Divider(),
                 InkWell(
                   onTap: (){},
                   child: ListTile(
                     title: Text("Setting"),
                     leading: Icon(Icons.settings,color: Colors.grey,),
                   ),
                 ),
                 InkWell(
                   onTap: (){},
                   child: ListTile(
                     title: Text("About"),
                     leading: Icon(Icons.help,color: Colors.blue,),
                   ),
                 ),
                 
                 
             ],
           ),
         ),
         body: ListView(
           children: [
             image_carousel,
             // ignore: unnecessary_new
              Padding(padding: EdgeInsets.all(10),
             child: Text("Categrios",style: TextStyle(color: Colors.red),),),
             //horizantal listview 
            Horizantel(),

             Padding(padding: EdgeInsets.all(20),
             child: Text("Recent Product",style: TextStyle(color: Colors.red),),),

             //gridview

             Container(
               height: 320,
              
             ),

           ],
         ),

    );
    
  }
}