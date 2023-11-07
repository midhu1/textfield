import 'package:flutter/material.dart';
import 'package:textfield/utils/colors_constant/colors.dart';

class mymovielistbuilder extends StatelessWidget {
  const mymovielistbuilder({super.key,required,
   required this.title,
   this.Widgetshape = BoxShape.rectangle,
   this.height =160,
   this.width =100,
   required this.imageList,
   this.extraction =false,
    });
  final String title;
  final BoxShape Widgetshape;
  final double height;
  final double width;
  final List<String> imageList;
  final bool extraction;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text( title,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colorconstant.textcolor),
              ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: height,
              child: Row(
                children:List.generate(
                imageList.length,
                 (index) => Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                                 decoration: BoxDecoration(shape: Widgetshape,
                                 image: DecorationImage(image: AssetImage(imageList[index],
                                 ),
                                 fit: BoxFit.cover
                                 ),
                                 color: Colors.black
                                 ),
                                 height: height,
                                 width: width,
                                 child: Visibility(visible:extraction,child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: width,
                        height: 30,
                        color: Colorconstant.matblack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.info_outline,
                            color: Colorconstant.textcolor,
                            ),
                            Icon(Icons.more_vert,
                            color: Colorconstant.textcolor,
                            ),
                          ],
                        ),
                      )
                    ],
                                 ),
                                 ),
                               ),
                 ),
              ),
              ),
            ),
          )
        ],),
      ),
    );
  }
}