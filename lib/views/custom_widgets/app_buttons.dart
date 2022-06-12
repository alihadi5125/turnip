

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';

class AppButtons{

  //filledButton
  static Widget whiteFilledButton({
  required String onTopText,
    required EdgeInsets padding,
    required Color fillColor,
    required Color textColor,
}){
    return Container(
      width: 1.sw,
      height: 170.0.sp,
      padding: padding,
      child: Container(
        alignment: Alignment.center,
        width: 1.sw,
        height: 170.0.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120.0),
          color: fillColor,
        ),
        child: FittedBox(
          child: Text(
            onTopText,
            style: GoogleFonts.nunitoSans(
              fontSize: 50.0.sp,
              color: textColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  //backButton
static Widget backButton({
  required BuildContext context,
}){
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: (){
        Navigator.of(context).pop();
      },
      child: Container(
        height: 120.sp,
        width: 120.sp,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.pureWhite,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.only(
          left: 10.sp,
        ),
        child: Icon(
          Icons.arrow_back_ios,
          color: AppColors.themeBlue,
          size: 53.95.sp,
        ),
      ),
    );
}

}