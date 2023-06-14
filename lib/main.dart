import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarthak_education/Screens/HomeScreen/view/HomePage.dart';

void main()
{
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => HomePage(),
      },
    )
  );
}