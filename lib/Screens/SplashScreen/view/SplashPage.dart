import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarthak_education/Screens/HomeScreen/controller/HomeController.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  HomeController homeController = Get.put(HomeController());
  @override
  void initState() {
    super.initState();
    double size2 = Get.width/1.3;
    Timer(const Duration(seconds: 3), () {
      Get.offNamed('Home');
    });
    Timer.periodic(const Duration(milliseconds: 3), (timer) {
      if(size2.round() != homeController.hwSize.value.round())
        {
          homeController.hwSize.value++;
          print("===== sizeee ${homeController.hwSize.value}");
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset("assets/image/splashbg.png",fit: BoxFit.fill,color: Color(0xff30428A),),
            ),
            Align(
              alignment: Alignment.center,
              child: Obx(
                () => AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: homeController.hwSize.value,
                  width: homeController.hwSize.value,
                  // color: Colors.red,
                  child: Image.asset("assets/image/sarthak_logo.png",),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
