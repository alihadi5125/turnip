import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final IconData trailingIcon;
  final Color backgroundColor;
  final bool visibilityData;
  final Function()? leadingButtonFunctionality;
  final Function()? trailingButtonFunctionality;

  const CustomAppBar({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
    required this.backgroundColor,
    required this.visibilityData,
    required this.leadingButtonFunctionality,
    required this.trailingButtonFunctionality,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.sp,
      width: 1.sw,
      color: backgroundColor,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(
                left: 100.sp,
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: leadingButtonFunctionality,
                child: Container(
                  height: 120.sp,
                  width: 120.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.firstBlue,
                        AppColors.secondBlue,
                      ],
                    ),
                  ),
                  padding: visibilityData == false ? EdgeInsets.only(
                    left: 15.sp
                  ) : EdgeInsets.zero ,
                  child: Icon(
                    leadingIcon,
                    color: AppColors.pureWhite,
                    size: 48.61.sp,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: FittedBox(
                child: Text(
                  title,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 60.0.sp,
                    color: AppColors.fullBlack,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Visibility(
              visible: visibilityData,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(
                  right: 100.sp,
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: trailingButtonFunctionality,
                  child: Container(
                    height: 120.sp,
                    width: 120.sp,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.firstBlue,
                          AppColors.secondBlue,
                        ],
                      ),
                    ),
                    child: Icon(
                      trailingIcon,
                      color: AppColors.pureWhite,
                      size: 48.61.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
