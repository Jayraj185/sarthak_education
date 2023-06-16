import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarthak_education/Screens/HomeScreen/view/HomePage.dart';
import 'package:sarthak_education/Screens/SplashScreen/view/SplashPage.dart';
import 'package:sarthak_education/Screens/TodayScreen/view/TodayPage.dart';

void main()
{
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => const SplashPage(),
        'Home':(p0) => const HomePage(),
        'Today':(p0) => const TodayPage(),
      },
    )
  );
}