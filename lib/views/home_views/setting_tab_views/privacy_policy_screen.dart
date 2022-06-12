import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_strings.dart';
import 'package:turnip/views/custom_widgets/app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CustomAppBar(
              leadingIcon: Icons.arrow_back_ios,
              title: AppStrings.settingScreenSecondText,
              trailingIcon: Icons.circle_outlined,
              backgroundColor: AppColors.pureWhite,
              visibilityData: false,
              leadingButtonFunctionality: () {
                Navigator.of(context).pop();
              },
              trailingButtonFunctionality: () {},
            ),
            SizedBox(
              height: 113.sp,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 100.sp,
                right: 100.sp,
              ),
              child: Text(
                AppStrings.privacyPolicy,
                style: GoogleFonts.nunitoSans(
                  fontSize: 50.sp,
                  color: AppColors.fullBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
