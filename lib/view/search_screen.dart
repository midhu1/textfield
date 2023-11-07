import 'package:flutter/material.dart';
import 'package:textfield/database/db.dart';
import 'package:textfield/utils/colors_constant/colors.dart';
import 'package:textfield/view/widget/search_card.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.primaryblack,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextField(
              decoration: InputDecoration(hintText: "search for a show,movie,genure,etc.",
              filled: true,
              fillColor:Colorconstant.textcolor,
              prefixIcon: Icon(Icons.search) ,
              suffixIcon: Icon(Icons.mic)),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Top Searches",style: TextStyle(fontSize: 26.75,fontWeight: FontWeight.w700,color:Colorconstant.textcolor),),
            ),
            ListView.builder(physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: Database.Topsearch.length,
              itemBuilder:(context, index) => searchcard(
              name: Database.Topsearch[index]["name"],
             image: Database.Topsearch[index]["image"]),)
          ],),

        ))
    );
  }
}