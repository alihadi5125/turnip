import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_strings.dart';

import '../../models/utils/app_icons.dart';

class AppTextFields {

  //simple TextField
  static Widget phoneNumberTextField({
    required EdgeInsets padding,
    required TextInputType textInputType,
    required Widget prefixIcon,
    required String hintText,
  }) {
    return Container(
      height: 180.sp,
      width: 1.sw,
      padding: padding,
      child: TextField(
        style: GoogleFonts.nunitoSans(
          fontSize: 50.0.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: AppColors.pureWhite,
        keyboardType: textInputType,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeBlue),
              borderRadius: BorderRadius.circular(200.0.sp),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.pureWhite),
              borderRadius: BorderRadius.circular(200.0.sp),
            ),
            filled: true,
            hintText: hintText,
            hintStyle: GoogleFonts.nunitoSans(
              fontSize: 50.0.sp,
              color: AppColors.pureWhite,
              fontWeight: FontWeight.w600,
            ),
            fillColor: AppColors.themeBlue,
            contentPadding: EdgeInsets.only(
              top: 10.sp,
            )),
      ),
    );
  }

  //OTP TextField
  static Widget customOTPTextField({
    required BuildContext ctx
  }) {
    return SizedBox(
      height: 170.sp,
      width: 170.sp,
      child: TextFormField(
        style: GoogleFonts.nunitoSans(
          fontSize: 50.0.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        cursorHeight: 5.0.sp,
        autofocus: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        cursorColor: AppColors.themeBlue,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: 5.sp,
            bottom: 5.sp,
            left: 5.sp,
          ),
          filled: true,
          fillColor: AppColors.themeBlue,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30.sp),
          ),
          counterText: '',

        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(ctx).nextFocus();
          }
        },
      ),
    );
  }
}
