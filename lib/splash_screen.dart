import 'dart:async';

import 'package:flutter/material.dart';
import 'package:textfield/utils/colors_constant/colors.dart';
import 'package:textfield/view/user_name.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Username(), ),);
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.primaryblack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/logos_netflix.png"))),
          ),   
          
   ], ),
              
    );
  
          
    
  
      
        
      
  }
}