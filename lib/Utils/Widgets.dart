import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Widgets
{
  Widgets._();
  static Widgets widgets = Widgets._();

  static Color blue = const Color(0xff30428A);
  static Color purple = const Color(0xff5F3285);

  Widget CustomAppBarBG()
  {
    return Container(
      height: Get.width / 3.6,
      width: Get.width,
      color: Color(0xff30428A),
    );
  }
}