// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import
import 'package:flutter/material.dart';
import '../widgets/card_widget.dart';
import '../data/list-nutritions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Nutrition App",style: TextStyle(
              color: Colors.white,
              fontFamily: 'century',
              fontWeight: FontWeight.bold,
            ),),
            Text("Home",style: TextStyle(
              color: Colors.white,
              fontFamily: 'century',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 64, 163, 7),
      ),
      body: ListView(
        children: [
          Container(
            child: Image(image: AssetImage("assets/images/banner.jpg"),)
          ),
          Container(
            margin: EdgeInsets.only(top: 10,),
            child: Text("Health Food and nutrition facts", style: TextStyle(
              fontSize: 25,
              color: Colors.green
            ),),
          ),
          SizedBox(height: 6,),
          Column(
            children: nutrioninfro.map((nutritionob){
              return cards(
                name: nutritionob['Nutrition_name']!, 
                imgurl: nutritionob['imgurl']!,
                weightdata: nutritionob['Weight']!, 
                calsuimdata: nutritionob['Calsuim']!,
                Vetimindata: nutritionob['Vetemin']!, 
                greesedata: nutritionob['Greese']!,
                Price: nutritionob['Price']!,
                waterdata: nutritionob['Water']!, 
                sugerdata: nutritionob['Suger']!,
                fatdata: nutritionob['Fat']!, 
                protiendata: nutritionob['Protien']!,
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}