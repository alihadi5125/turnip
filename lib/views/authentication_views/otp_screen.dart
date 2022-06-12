import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_constants.dart';
import 'package:turnip/models/utils/app_strings.dart';
import 'package:turnip/views/authentication_views/welcome_screen.dart';
import 'package:turnip/views/custom_widgets/app_buttons.dart';
import 'package:turnip/views/custom_widgets/app_textfields.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
                    : 1350.sp,
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
                            AppStrings.otpScreenFirstText,
                            style: GoogleFonts.nunitoSans(
                              fontSize: 80.0.sp,
                              color: AppColors.pureWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Center(
                        child: FittedBox(
                          child: Text(
                            AppStrings.otpScreenSecondText,
                            textAlign: TextAlign.center,
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
                      SizedBox(
                        height: 170.sp,
                        width: 1.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: AppTextFields.customOTPTextField(
                                  ctx: context),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 3,
                              child: AppTextFields.customOTPTextField(
                                  ctx: context),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 3,
                              child: AppTextFields.customOTPTextField(
                                  ctx: context),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 3,
                              child: AppTextFields.customOTPTextField(
                                  ctx: context),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 3,
                              child: AppTextFields.customOTPTextField(
                                  ctx: context),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 3,
                              child: AppTextFields.customOTPTextField(
                                  ctx: context),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0.07.sh,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WelcomeScreen(),
                            ),
                          );
                        },
                        child: AppButtons.whiteFilledButton(
                          onTopText: 'Submit',
                          padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
                          fillColor: AppColors.pureWhite,
                          textColor: AppColors.fullBlack,
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      Center(
                        child: FittedBox(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Didn\'t received code?',
                                  style: GoogleFonts.nunitoSans(
                                    color: AppColors.pureWhite,
                                    fontSize: 50.sp,
                                    fontWeight: FontWeight.normal,
                                    // fontSize: deviceHeight(context) * 0.5 ,
                                  ),
                                ),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                  child: SizedBox(width: 15.sp),
                                ),
                                TextSpan(
                                  // recognizer: TapGestureRecognizer()
                                  //   ..onTap = widget.onClickedSignUp,
                                  text: 'Send Again',
                                  style: GoogleFonts.nunitoSans(
                                    color: AppColors.pureWhite,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 52.sp,
                                    decoration: TextDecoration.underline,
                                    // fontSize: 60,
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
              ),
            ),
            Positioned(
              top: 140.sp,
              left: 65.sp,
              child: InkWell(child: AppButtons.backButton(context: context),),
            ),
          ],
        ),
      ),
    );
  }
}
