import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_strings.dart';

class SettingCustomContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? functionality;
  final bool addContainer;

  const SettingCustomContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.functionality,
    required this.addContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.sp,
      width: 1.sw,
      margin: EdgeInsets.only(
        left: 100.sp,
        right: 100.sp,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondGrey,
        borderRadius: BorderRadius.circular(120.sp),
      ),
      padding: EdgeInsets.only(
        left: 70.sp,
        right: 70.sp,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                child: Text(
                  title,
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 50.sp,
                    color: AppColors.fullBlack,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: functionality,
              child: Align(
                alignment: Alignment.centerRight,
                child: !addContainer ? Icon(
                  icon,
                  color: AppColors.thirdBlue,
                  size: 70.15.sp,
                )  : Container(
                  height: 80.sp,
                  width: 80.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.thirdBlue,
                      width: 5.sp,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      icon,
                      color: AppColors.thirdBlue,
                      size: 55.sp,
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
