import 'package:flutter/material.dart';
import 'package:textfield/utils/colors_constant/colors.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({super.key, required this.title, required this.subtitle, required this.date, required this.image,});
  final String title;
  final String subtitle;
  final String date;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      color: Colorconstant.iconGrey,
      child: Row(children: [
        Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
        , color: Colors.amber,),
          height: 55,
          width: 115,
          
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(title,
            style: TextStyle(color: Colorconstant.textcolor,fontSize: 13),
            ),
            SizedBox(
              height: 5,
            ),
            Text(subtitle,
            style: TextStyle(color: Colorconstant.textcolor,fontSize: 13),
            ),
            Text(date,
            style: TextStyle(color: Colorconstant.textcolor,fontSize: 10),
            )
          ],)
      ],),
    );
  }
}