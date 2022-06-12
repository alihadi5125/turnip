import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_constants.dart';
import 'package:turnip/models/utils/app_strings.dart';
import 'package:turnip/views/custom_widgets/app_buttons.dart';
import 'package:turnip/views/custom_widgets/app_textfields.dart';
import 'package:turnip/views/home_views/home_pageview_screen.dart';

import '../../models/utils/app_icons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Container(
        decoration: AppConstants.decoration,
        width: 1.sw,
        height: 1.sh,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 700),
              bottom: 0,
              right: 0,
              child: Container(
                width: 1.sw,
                height: MediaQuery.of(context).viewInsets.bottom == 0
                    ? 1974.sp
                    : 1600.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(100.sp),
                  ),
                  color: Colors.black26,
                ),
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(overscroll: false),
                  child: ListView(
                    padding: EdgeInsets.only(
                      top: 120.sp,
                      left: 100.sp,
                      right: 100.sp,
                    ),
                    children: [
                      SizedBox(
                        height: 450.sp,
                        width: 1.sw,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0.sp,
                              left: 1.sw / 3.3,
                              child: Container(
                                height: 435.sp,
                                width: 435.sp,
                                decoration: BoxDecoration(
                                  color: AppColors.pureWhite,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 2.sp,
                                    color: AppColors.pureWhite,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/Ellipse 175.png',
                                  // fit: BoxFit,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0.sp,
                              right: 1.sw / 3.8,
                              child: Container(
                                height: 155.sp,
                                width: 155.sp,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.themeBlue,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 2.sp,
                                    color: AppColors.pureWhite,
                                  ),
                                ),
                                padding: EdgeInsets.only(
                                  top: 20.sp,
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(
                                          right: 10.sp,
                                        ),
                                        child: Icon(
                                          AppIcons.gallery_image,
                                          size: 44.sp,
                                          color: AppColors.pureWhite,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: FittedBox(
                                          child: Text(
                                            AppStrings.welcomeScreenSecondText,
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 18.0.sp,
                                              color: AppColors.pureWhite,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      Center(
                        child: FittedBox(
                          child: Text(
                            AppStrings.welcomeScreenFirstText,
                            style: GoogleFonts.nunitoSans(
                              fontSize: 80.0.sp,
                              color: AppColors.pureWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: FittedBox(
                          child: Text(
                            AppStrings.welcomeScreenThirdText,
                            style: GoogleFonts.nunitoSans(
                              fontSize: 50.0.sp,
                              color: AppColors.pureWhite,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      AppTextFields.phoneNumberTextField(
                        padding: EdgeInsets.zero,
                        textInputType: TextInputType.name,
                        prefixIcon: const SizedBox(),
                        hintText: 'Elon Musk',
                      ),
                      SizedBox(
                        height: 0.07.sh,
                      ),
                      InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePageViewScreen(),
                            ),
                          );
                        },
                        child: AppButtons.whiteFilledButton(
                          onTopText: 'Go to the app!',
                          padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
                          fillColor: AppColors.pureWhite,
                          textColor: AppColors.fullBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 140.sp,
              left: 65.sp,
              child: InkWell(
                child: AppButtons.backButton(context: context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
