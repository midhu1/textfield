import 'package:flutter/material.dart';
import 'package:textfield/database/db.dart';
import 'package:textfield/utils/colors_constant/colors.dart';
import 'package:textfield/utils/image_constant/image.dart';
import 'package:textfield/view/widget/bottom_nav.dart';

class Username extends StatefulWidget {
  const Username({super.key});

  @override
  State<Username> createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 18,
              ),
              Image.asset(ImageConstant.MyLogo,
                width: 138,
                height: 37.08,
              ),
            ]),
        actions: [
          Icon(Icons.edit),
          SizedBox(
            width: 18,
          )
        ],
      ),
      backgroundColor: Colorconstant.primaryblack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 40,
                    mainAxisExtent: 150),
                itemBuilder: (context, index) => index == Database.users.length
                    ? Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(ImageConstant.addLogo),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Add profile",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => bottomnavigation(),
                                )),
                            child: Container(
                              color: Colors.black,
                              child: Image.asset(Database.users[index]["image"]),
                            ),
                          ),
                          Text(
                            Database.users[index]["name"],
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                itemCount: Database.users.length + 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}