import 'package:flutter/material.dart';
import 'package:textfield/utils/colors_constant/colors.dart';

class comingsooncontainer extends StatelessWidget {
  const comingsooncontainer({super.key, required this.image, required this.title, required this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),color: Colorconstant.LogoRed,),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(Icons.notification_important_rounded,
                  color: Colorconstant.textcolor,
                  ),
                  Text("Remind Me",
                  style: TextStyle(color: Colorconstant.textcolor,fontSize: 10),)
                ],
              ),
              
              Column(
                children: [
                  Icon(Icons.share,
                  color: Colorconstant.textcolor,
                  ),
                  Text("Share",
                  style: TextStyle(color: Colorconstant.textcolor,fontSize: 10),)
                ],
              ),
              SizedBox(
                width: 20,
              ),SizedBox(
                width: 10,
              ),
            ],),
            Text(title,
            style: TextStyle(color: Colorconstant.textcolor),
            ),
            SizedBox(
                width: 10,
              ),
            Text(subtitle,
            style: TextStyle(color: Colorconstant.textcolor,fontSize: 18.66,fontWeight: FontWeight.w700),
            ),
            SizedBox(
                width: 10,
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
            style: TextStyle(color: Colorconstant.textcolor,fontSize: 13,fontWeight: FontWeight.w700),
            ),SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text("Steamy",
              style: TextStyle(color: Colorconstant.textcolor,fontSize: 11,),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colorconstant.iconGrey,radius: 3,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Soapy",
              style: TextStyle(color: Colorconstant.textcolor,fontSize: 11),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colorconstant.iconGrey,radius: 3,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Slow Burn",
              style: TextStyle(color: Colorconstant.textcolor,fontSize: 11),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colorconstant.iconGrey,radius: 3,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Suspenseful",
              style: TextStyle(color: Colorconstant.textcolor,fontSize: 11),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colorconstant.iconGrey,radius: 3,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Teen",
              style: TextStyle(color: Colorconstant.textcolor,fontSize: 11),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colorconstant.iconGrey,radius: 3,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Mystery",
              style: TextStyle(color: Colorconstant.textcolor,fontSize: 11),
              ),
             
              ],),
            )
              


      ],),
    );
  }
}