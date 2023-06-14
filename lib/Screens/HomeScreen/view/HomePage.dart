import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarthak_education/Screens/DrawerScreen/view/DrawerPage.dart';
import 'package:sarthak_education/Screens/NotificationScreen/view/NotificationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: Get.width/7,
              margin: EdgeInsets.all(Get.width/45),
              decoration: BoxDecoration(
                color: Color(0xff30428A),
                borderRadius: BorderRadius.circular(60)
              ),
              padding: EdgeInsets.symmetric(horizontal: Get.width/40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(DrawerPage(),transition: Transition.leftToRight);
                    },
                    child: Container(
                      height: Get.width/10,
                      width: Get.width/10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/image/menu_logo.png",
                        height: Get.width/15,
                        width: Get.width/15,
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width/30,),
                  Row(
                    children: [
                      SizedBox(
                        height: Get.width/15,
                        width: Get.width/15,
                        child: Image.asset("assets/image/sarthak_logo_small.png",),
                      ),
                      SizedBox(width: Get.width/60,),
                      Text(
                        "Sarthak Education",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: Get.width/10,
                    width: Get.width/5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white
                    ),
                    // alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: Get.width/60),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(NotificationPage(),transition: Transition.rightToLeft);
                          },
                          child: Container(
                            height: Get.width/15,
                            width: Get.width/15,
                            // color: Colors.red,
                            margin: EdgeInsets.only(left: Get.width/90),
                            child: Stack(
                              children: [
                                Align(alignment: Alignment.center,child: Icon(Icons.notifications,color: Color(0xFF5F3285),)),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: Get.width/35,
                                    width: Get.width/35,
                                    margin: EdgeInsets.only(top: Get.width/180),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white),
                                      color: Colors.red
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "3",
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 6
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ),
                        ),
                        Expanded(
                          child: PopupMenuButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))
                            ),
                            icon: Icon(Icons.more_vert,color: Color(0xFF5F3285),),
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(child: SizedBox(width: Get.width/4,child: Text("Language",style: GoogleFonts.poppins(),))),
                                PopupMenuItem(child: SizedBox(width: Get.width/4,child: Text("Sign in",style: GoogleFonts.poppins(),))),
                                PopupMenuItem(child: SizedBox(width: Get.width/4,child: Text("Share App",style: GoogleFonts.poppins(),))),
                              ];
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
