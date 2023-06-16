import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarthak_education/Screens/HomeScreen/controller/HomeController.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xFF5F3285),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF5F3285),
                    Color(0xFF30428A),
                  ]
                )
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                    height: Get.width/3,
                    width: Get.width/3,
                    margin: EdgeInsets.only(top: Get.width/15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/image/sarthak_logo.png",
                      height: Get.width/3.6,
                      width: Get.width/3.6,
                    ),
                  ),
                  SizedBox(height: Get.width/60,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      margin: EdgeInsets.all(Get.width/21),
                      padding: EdgeInsets.all(Get.width/21),
                      child: ListView.builder(
                        itemCount: homeController.DrawerList.length,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(top: index == 0 ? 0 : Get.width/21),
                            child: Row(
                              children: [
                                Container(
                                  height: Get.width/8,
                                  width: Get.width/8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    border: Border.all(color: Colors.black.withOpacity(0.05),strokeAlign: BorderSide.strokeAlignInside)
                                  ),
                                  alignment: Alignment.center,
                                  child: Image.asset("assets/image/${homeController.DrawerList[index].image}",height: Get.width/12,width: Get.width/12,),
                                ),
                                SizedBox(width: Get.width/30,),
                                Text(
                                  "${homeController.DrawerList[index].name}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: Get.width/30,right: Get.width/30),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: Get.width / 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
