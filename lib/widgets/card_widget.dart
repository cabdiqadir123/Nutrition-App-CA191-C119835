// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import
import 'package:flutter/material.dart';
import '../constrants/values.dart';
import '../screens/details.dart';

class cards extends StatelessWidget {
  final String name;
  final String imgurl;
  final String weightdata;
  final String calsuimdata;
  final String Vetimindata;
  final String greesedata;
    final String waterdata;
  final String sugerdata;
  final String protiendata;
  final String fatdata;
  final String Price;
  const cards({super.key, required this.name, required this.Price,required this.imgurl, required this.weightdata, required this.calsuimdata, required this.Vetimindata, required this.greesedata,
    required this.waterdata,required this.fatdata,required this.sugerdata,required this.protiendata  
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 5,left: 5,bottom: 5),
      color: Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(imgurl),
            height: 100,
            width: 100,
          ),
          SizedBox(width: 20,),
          Text(name,style: TextStyle(
            fontSize: 20,
            fontFamily: "Century;"
          ),),
          SizedBox(width: 20,),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=>Details(wdata: weightdata, cdata: calsuimdata, vdata: Vetimindata, gdata: greesedata, name: name,Pricedata: Price,img: imgurl,
                    wadata: waterdata, sdata: sugerdata, fdata: Vetimindata, pdata: protiendata
                ))
              );
            }, 
            child: Text("see more",style: TextStyle(color: Colors.white),)
          )
        ],
      ),
    );
  }
}