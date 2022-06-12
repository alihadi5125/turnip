import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_icons.dart';
import 'package:turnip/models/utils/app_strings.dart';
import 'package:turnip/views/custom_widgets/app_bar.dart';
import 'package:turnip/views/home_views/setting_tab_views/setting_tab_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CustomAppBar(
              leadingIcon: Icons.arrow_back_ios,
              title: AppStrings.profileScreenTitle,
              trailingIcon: AppIcons.setting,
              backgroundColor: Colors.white,
              visibilityData: true,
              leadingButtonFunctionality: () {
                Navigator.of(context).pop();
              },
              trailingButtonFunctionality: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingTabScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 115.sp,
            ),
            Container(
              height: 435.sp,
              width: 435.sp,
              decoration: BoxDecoration(
                color: AppColors.themeBlue,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2.sp,
                  color: AppColors.themeBlue,
                ),
              ),
              child: Image.asset(
                'assets/images/Ellipse 176.png',
                // fit: BoxFit,
              ),
            ),
            SizedBox(
              height: 55.sp,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: FittedBox(
                child: Text(
                  AppStrings.profileScreenUserName,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 60.sp,
                    color: AppColors.fullBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 55.sp,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: FittedBox(
                child: Text(
                  AppStrings.profileScreenTotalPics,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 50.sp,
                    color: AppColors.fullBlack,
                    fontWeight: FontWeight.w600,
                    height: 1.6.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.sp,
            ),
            Container(
              height: 1.sh,
              width: 1.sw,
              color: AppColors.pureWhite,
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: GridView.builder(
                  itemCount: 28,
                  padding: EdgeInsets.only(
                    bottom: 0.4.sh,
                  ),
                  physics: const AlwaysScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) => Container(
                    height: 434.sp,
                    width: 413.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.sp,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/Rectangle 48.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
