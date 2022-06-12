import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_constants.dart';

class PinVerification extends StatefulWidget {
  const PinVerification({Key? key}) : super(key: key);

  @override
  _PinVerificationState createState() => _PinVerificationState();
}

class _PinVerificationState extends State<PinVerification> {
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
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 1.sw,
                height: 0.4.sh,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(100.sp),
                  ),
                  color: Colors.black.withOpacity(0.35),
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Center(
                      child: Text(
                        'Continue with contact number',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 80.0.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Enter your phone number to login to your account',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 50.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
                      child: TextField(
                        style: GoogleFonts.nunitoSans(
                          fontSize: 50.0.sp,
                          color: Colors.white,        
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                            prefixIcon: const Padding(
                              padding: EdgeInsetsDirectional.only(start: 12.0),
                              child: Icon(
                                Icons.phone_android,
                                color: Colors.white,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(200.0.sp),
                            ),
                            filled: true,
                            hintStyle: GoogleFonts.nunitoSans(
                              fontSize: 50.0.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            hintText: "Type in your text",
                            fillColor: const Color(0xff2d4dd3)),
                      ),
                    ),
                    SizedBox(
                      height: 0.06.sh,
                    ),
                    Container(
                      width: 1.sw,
                      height: 170.0.sp,
                      padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
                      child: Container(
                        alignment: Alignment.center,
                        width: 1.sw,
                        height: 170.0.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120.0),
                          color: Colors.white,
                        ),
                        child: Text(
                          'Submit Now!',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 50.0.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
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
    );
  }
}
