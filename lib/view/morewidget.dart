import 'package:flutter/material.dart';
import 'package:textfield/database/db.dart';
import 'package:textfield/utils/colors_constant/colors.dart';


class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                Database.users.length + 1,
                (index) => index == Database.users.length
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colorconstant.textcolor,
                                  width: 1)),
                          height: 53,
                          width: 63,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colorconstant.textcolor,
                              size: 35,
                            ),
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Container(height: 80,width: 60,
                            color: Colors.black,
                            child: Image.asset(Database.users[index]["image"]),
                          ),
                          Text(
                            Database.users[index]["name"],
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
              ),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 12,
                width: 12,
                child:Icon(Icons.draw_outlined,color: Colorconstant.textcolor,size: 15,)
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                "Manage Profiles",
                style: TextStyle(
                    fontSize: 14.72,
                    fontWeight: FontWeight.w400,
                    color: Colorconstant.textcolor),
              )
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            height: 247,
            width: double.infinity,
            color: Colorconstant.containerGrey,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 19),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.message_sharp,
                          color: Colorconstant.textcolor
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          "Tell friends about Netflix.",
                          style: TextStyle(
                              fontSize: 19.63,
                              fontWeight: FontWeight.w700,
                              color: Colorconstant.textcolor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, """,
                      style: TextStyle(
                          fontSize: 10.14,
                          color: Colorconstant.textcolor,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.78,
                        color: Colorconstant.textcolor,
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 37,
                          width: 240,
                          color: Colorconstant.primaryblack,
                        ),
                        SizedBox(
                          height: 37,
                          width: 88,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Colorconstant.textcolor),
                            ),
                            child: Text(
                              "Copy Link",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colorconstant.matblack),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Image(
                            image:
                                AssetImage("asset/Group 93.png")),
                        Container(
                          height: 41,
                          width: 1,
                          color: Colorconstant.iconGrey,
                        ),
                        const Image(
                            image:
                                AssetImage("asset/Group 92.png")),
                        Container(
                          height: 41,
                          width: 1,
                          color: Colorconstant.iconGrey,
                        ),
                        const Image(
                            image: AssetImage("asset/Gmail-logo 1.png")),
                        Container(
                          height: 41,
                          width: 1,
                          color: Colorconstant.iconGrey,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.more_horiz_sharp,
                              color: Colorconstant.textcolor,
                            ),
                            Text(
                              "More",
                              style: TextStyle(
                                  color: Colorconstant.textcolor),
                            )
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, bottom: 5),
            child: Row(
              children: [
                const Image(image: AssetImage("asset/noto-v1_check-mark-button.png")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "My List",
                    style: TextStyle(
                        color: Colorconstant.textcolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.5),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colorconstant.textcolor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  child: Text(
                    "App Settings",
                    style: TextStyle(color: Colorconstant.textcolor),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    "Accounds",
                    style: TextStyle(color: Colorconstant.textcolor),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    "Help",
                    style: TextStyle(color: Colorconstant.textcolor),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(color: Colorconstant.textcolor),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}