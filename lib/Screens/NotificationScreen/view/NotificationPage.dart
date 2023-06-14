import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff30428A),
            ),
          ),
          title: Text(
            "Notifications",
            style: GoogleFonts.poppins(color: Color(0xff30428A)),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/image/delete_logo.png",height: Get.width/15,width: Get.width/15,)
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: Get.width/2.1,
                width: Get.width/2.1,
                child: Lottie.asset("assets/animation/empty_box.json",fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: Get.width/60,),
            Align(
              alignment: Alignment.center,
              child: Text(
                "No Notifications Found",
                style: GoogleFonts.poppins(
                  fontSize: 16
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
