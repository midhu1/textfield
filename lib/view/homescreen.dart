import 'package:flutter/material.dart';
import 'package:textfield/database/db.dart';
import 'package:textfield/utils/colors_constant/colors.dart';
import 'package:textfield/utils/image_constant/image.dart';
import 'package:textfield/view/widget/my_movie_list_builder.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.primaryblack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(children: [
            Container(
              height: 415,
              width: double.infinity,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.homescr),
              fit: BoxFit.cover
              ),
              color: Colors.amber),
            ),
             Positioned(
              height: 57,
              width: 400,
               child: Container(
                height: 500,
                width: double.infinity,
               decoration: BoxDecoration(gradient: LinearGradient(
                colors: [Colors.black.withOpacity(.5),
                Colors.transparent],begin: Alignment.bottomCenter,end: Alignment.topCenter),),
                       ),
             ),
            Positioned(
              top: 47,
              height: 57,
              width: 400,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.asset(ImageConstant.minLogo),
                  TextButton(onPressed: (){}, child: Text("TV Shows",style: TextStyle(
                    fontSize: 17.2,
                    fontWeight: FontWeight.w400,color: Colorconstant.textcolor,
                    ),
                  ),
                ),
                    TextButton(onPressed: (){}, child: Text("Movies",style: TextStyle(
                    fontSize: 17.2,
                    fontWeight: FontWeight.w400,color: Colorconstant.textcolor,
                    ),
                    ),
                    ),
                    TextButton(onPressed: (){}, child: Text("My List",style: TextStyle(
                    fontSize: 17.2,
                    fontWeight: FontWeight.w400,color: Colorconstant.textcolor,
                    ),
                    ),
                    ),
                    
                    
                ],),
              ),
            ),
            Positioned(
              left: 130,
              top: 388,
              child: SizedBox(
              height: 20,
              width: 200,
              child: Text("#2 in Nigeria Today",style: TextStyle(
                color: Colorconstant.textcolor,
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),
              ),
            ),
            )
          ],),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 54),
            child: SizedBox(
              height: 45,
              width: 259,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SizedBox(
                  height: 41,
                  width: 45,
                  child: Column(children: [
                    Icon(Icons.add,color: Colorconstant.textcolor,
                    ),
                    Text("My List",
                    style: TextStyle(
                      fontSize: 13.64,
                      color: Colorconstant.textcolor,
                    ),)
                  ],),
                ),
                Container(
                  height: 45,
                  width: 110.63,
                  decoration: BoxDecoration(color: Colorconstant.textcolor,
                  borderRadius: BorderRadius.circular(5.63),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Icon(Icons.play_arrow,
                    size: 30,
                    ),
                    Text("Play",style: TextStyle(fontSize: 20.46,fontWeight: FontWeight.w600),
                    )
                  ],),
                ),
                SizedBox(
                  height: 45,
                  width: 24,
                  child: Column(children: [
                    Icon(Icons.info_outline,color: Colorconstant.textcolor,
                    ),
                    Text("Info",style: TextStyle(fontSize: 13.64,color: Colorconstant.textcolor),)
                  ],),
                )
              ],),
            ),
          ),
          SizedBox(
            height: 43,
          ),
          mymovielistbuilder(title: "Previews",
           imageList: Database.preview,
           height: 170,Widgetshape: BoxShape.circle,),
          mymovielistbuilder(title: "Continue Watching for Emenalo", imageList:Database.ContinueWatching,
          height: 170,
          extraction: true,),
          mymovielistbuilder(title: "Popular on Netflix", 
          imageList:Database.PopularNetflix,
          height: 170,)
        ],),
      ),
    );
  }
}