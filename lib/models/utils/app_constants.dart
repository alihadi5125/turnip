import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static BoxDecoration decoration = BoxDecoration(
    image: const DecorationImage(
      image: AssetImage(
        "assets/images/background.png",
      ),
      fit: BoxFit.cover,
    ),
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFF5C79FF), Color(0xFF1A3080)],
    ),
    border: Border.all(
      width: 1.0.sp,
      color: const Color(0xff707070),
    ),
  );
}
