import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_constants.dart';
import 'package:turnip/models/utils/app_icons.dart';
import 'package:turnip/models/utils/app_strings.dart';
import 'package:turnip/views/custom_widgets/app_buttons.dart';
import 'package:turnip/views/custom_widgets/app_textfields.dart';

import 'otp_screen.dart';

class LoginPhoneNumber extends StatefulWidget {
  const LoginPhoneNumber({Key? key}) : super(key: key);

  @override
  _LoginPhoneNumberState createState() => _LoginPhoneNumberState();
}

class _LoginPhoneNumberState extends State<LoginPhoneNumber> {
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
              duration: const Duration(milliseconds: 500),
              left: 0,
              right: 0,
              top: MediaQuery.of(context).viewInsets.bottom == 0
                  ? 0.2.sh
                  : 0.01.sh,
              child: Image.asset(
                "assets/images/logo.png",
                height: 0.2.sh,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 700),
              bottom: 0,
              right: 0,
              child: Container(
                width: 1.sw,
                height: MediaQuery.of(context).viewInsets.bottom == 0
                    ? 1560.sp
                    : 1200.sp,
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
                      top: 150.sp,
                      left: 100.sp,
                      right: 100.sp,
                    ),
                    children: [
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      Center(
                        child: FittedBox(
                          child: Text(
                            AppStrings.phoneLoginFirstText,
                            style: GoogleFonts.nunitoSans(
                              fontSize: 80.0.sp,
                              color: AppColors.pureWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: FittedBox(
                          child: Text(
                            AppStrings.phoneLoginSecondText,
                            style: GoogleFonts.nunitoSans(
                              fontSize: 50.sp,
                              color: AppColors.pureWhite,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      AppTextFields.phoneNumberTextField(
                        padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
                        textInputType: TextInputType.phone,
                        prefixIcon: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 100.0.sp,
                            end: 20.sp,
                          ),
                          child: Icon(
                            AppIcons.cell_phone,
                            color: Colors.white,
                            size: 56.sp,
                          ),
                        ),
                        hintText: AppStrings.phoneLoginThirdText,
                      ),
                      SizedBox(
                        height: 0.08.sh,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OTPScreen(),
                            ),
                          );
                        },
                        child: AppButtons.whiteFilledButton(
                          onTopText: 'Submit Now!',
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
          ],
        ),
      ),
    );
  }
}
