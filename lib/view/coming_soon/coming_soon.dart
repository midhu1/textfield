import 'package:flutter/material.dart';
import 'package:textfield/database/db.dart';
import 'package:textfield/utils/colors_constant/colors.dart';
import 'package:textfield/view/widget/comingsoon_container.dart';
import 'package:textfield/view/widget/new_arrival.dart';

class comingsoon extends StatelessWidget {
  const comingsoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Row(children: [
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notification_add,
          color: Colorconstant.LogoRed,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Notification",style: TextStyle(color: Colorconstant.textcolor,fontSize: 16.91,fontWeight: FontWeight.w700),
          ),
        ],),
        backgroundColor: Colorconstant.matblack,
        elevation: 0,
      ),
      
      body:SingleChildScrollView(
        child: Container(
          color: Colorconstant.matblack,
          child: Column(children: [
            SizedBox(
              height: 0,
            ),
            ListView.builder(
              itemCount: 2,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
             NewArrival(
              title: Database.NewArrival[index]["title"],
               subtitle: Database.NewArrival[index]["subtitle"], 
               date: Database.NewArrival[index]["date"],
                image: Database.NewArrival[index]["image"]),),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) => comingsooncontainer(image: Database.comingsoon[index]["image"], 
                  title:Database.comingsoon[index]["title"],
                   subtitle: Database.comingsoon[index]["subtitle"],),)
          ],),
        ),
      ) ,
    );
  }
}