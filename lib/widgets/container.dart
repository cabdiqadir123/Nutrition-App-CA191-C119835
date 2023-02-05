// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class container_widget extends StatelessWidget {
  final String title;
  final String data;
  const container_widget({
    Key? key, required this.title, required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 151, 153, 175),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      child: Container(
        child: ListView(
          children: [
            SizedBox(height: 15,),
            Center(
              child: Text(title,style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(data,style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
            ),
          ],
        )
      ),
    );
  }
}