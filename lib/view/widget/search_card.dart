import 'package:flutter/material.dart';
import 'package:textfield/utils/colors_constant/colors.dart';

class searchcard extends StatelessWidget {
  const searchcard({super.key, required this.name, required this.image});
  final String name ;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          color: Colorconstant.matblack,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(children: [
              Container(
          height: 76,
          width: 146,
          decoration: BoxDecoration(image: DecorationImage(image:AssetImage(image),
          fit: BoxFit.cover
          ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Center(child: Text(name,style: TextStyle(color: Colorconstant.textcolor),))
            ],),
            Icon(Icons.play_circle_outline_outlined,color: Colorconstant.textcolor,)
          ],),
              )
            ],);
          
  }
}