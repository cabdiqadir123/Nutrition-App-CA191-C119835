// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/container.dart';
import 'order.dart';

class Details extends StatelessWidget {
  final String name;
  final String img;
  final String wdata;
  final String cdata;
  final String vdata;
  final String gdata;
  final String wadata;
  final String sdata;
  final String fdata;
  final String pdata;
  final String Pricedata;
  const Details(
    { super.key,
      required this.wdata,
      required this.cdata,
      required this.vdata,
      required this.gdata,
      required this.wadata,
      required this.sdata,
      required this.fdata,
      required this.pdata,
      required this.name,
      required this.Pricedata,
      required this.img
    }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Nutrition App",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'century',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Details",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'century',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 64, 163, 7),
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image(
                  image: AssetImage(img),
                ),
              )),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Center(
              child: Text(
                name,
                style: TextStyle(fontSize: 30, fontFamily: 'century'),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "FoodMeasurement",
                style: TextStyle(fontSize: 30, fontFamily: 'century'),
              )),
          Row(
            children: [
              Expanded(
                child: container_widget(
                  title: 'weight',
                  data: wdata,
                ),
              ),
              Expanded(
                child: container_widget(
                  title: 'calsuim',
                  data: cdata,
                ),
              ),
              Expanded(
                child: container_widget(
                  title: 'Fat',
                  data: fdata,
                ),
              ),
              Expanded(
                child: container_widget(
                  title: 'Protien',
                  data: pdata,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: container_widget(
                  title: 'Vetimin',
                  data: vdata,
                ),
              ),
              Expanded(
                child: container_widget(
                  title: 'greese',
                  data: gdata,
                ),
              ),
              Expanded(
                child: container_widget(
                  title: 'Suger',
                  data: sdata,
                ),
              ),
              Expanded(
                child: container_widget(
                  title: 'Water',
                  data: wadata,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => orderscreen(nameoffood: name,imageoffood: img,finalprice: Pricedata,)));
              },
              child: Text(
                "Order",
                style: TextStyle(fontSize: 20),
              )),
          ),
        ],
      ),
    );
  }
}
