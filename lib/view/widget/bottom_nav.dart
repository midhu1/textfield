import 'package:flutter/material.dart';
import 'package:textfield/utils/colors_constant/colors.dart';
import 'package:textfield/view/coming_soon/coming_soon.dart';
import 'package:textfield/view/downloads.dart';
import 'package:textfield/view/homescreen.dart';
import 'package:textfield/view/morewidget.dart';
import 'package:textfield/view/search_screen.dart';

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int indexNum = 0;
  List<Widget> myscreen = [homescreen(),searchscreen(),comingsoon(),DownloadScreen(),MoreScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.primaryblack,
      body: myscreen[indexNum],
      bottomNavigationBar: BottomNavigationBar(backgroundColor:Colors.black,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          indexNum = value;
        });
      },
      currentIndex: indexNum,
       items:<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.black),
       BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.black),
       BottomNavigationBarItem(icon: Icon(Icons.video_library),label: "Coming Soon",backgroundColor: Colors.black),
       BottomNavigationBarItem(icon: Icon(Icons.download),label: "Download",backgroundColor: Colors.black),
       BottomNavigationBarItem(icon: Icon(Icons.more),label: "More",backgroundColor: Colors.black),]),
    );
  }
}