import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarthak_education/Utils/Widgets.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Widgets.widgets.CustomAppBarBG(),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: Get.width/75,),
                    Text(
                      "Today's",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    )
                  ],
                ),
                Container(
                  width: Get.width,
                  margin: EdgeInsets.only(top: Get.width/45,right: Get.width/25,left: Get.width/25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  alignment: Alignment.topLeft,
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(Get.width/25),
                          child: Text(
                            "Today's Thought",
                            style: GoogleFonts.inter(
                                color: Color(0xFF5F3285),
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF5F3285).withOpacity(0.20),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(Get.width/25),
                            child: Text(
                              "See everything as light. You are light, me yourfather is light and every-thing is made of this pure light of love and peace. You are co-creators of this Universe. Imagine you the soul residing in the body made of light.",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
