// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously, empty_catches, unused_element

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/screens/home.dart';

import 'register.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email =TextEditingController();
  TextEditingController Pass =TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10, left: 10, top: 20),
            child: Column(
              children: [
                // ignore: prefer_const_constructors
                Image(image: AssetImage("assets/images/login.png"),height: 200,),
                SizedBox(height: 20,),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Enter username"),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: Pass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Password",
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10,left: 10, top: 10),
            child: ElevatedButton(
              onPressed: (){
                loging() async{
                  try{
                    isloading=true;
                    setState(() {});
                    var response =await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: Pass.text);
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=>MyHomePage())
                    );
                  }catch(e){
                      log(e.toString());
                  }
                  isloading=false;
                  setState(() {});
                }
                loging();
              }, 
              child: isloading? CircularProgressIndicator(backgroundColor: Colors.white,):Text("Login",style: TextStyle(
                fontSize: 20
              ),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Don't HavE Account!", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>regisration())
                    );
                  }, 
                  child: Text("Create Account",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  ))
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
