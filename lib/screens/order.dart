// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class orderscreen extends StatelessWidget {
  final String imageoffood;
  final String nameoffood;
  final String finalprice;
  const orderscreen({super.key, required this.nameoffood, required this.finalprice, required this.imageoffood});

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
            Text("Order",style: TextStyle(
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Image(
                image: AssetImage(imageoffood),
              ),
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(nameoffood,style: TextStyle(
                  fontSize: 30
                ),),
                Text(finalprice,style: TextStyle(
                  fontSize: 30
                ),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Buy",
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
}