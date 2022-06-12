import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turnip/views/authentication_views/phone_login_screen.dart';

import '../../models/utils/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 7),
          () {
        if (!mounted) return;
        setState(
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPhoneNumber(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPhoneNumber(),
            ),
          );
        },
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: AppConstants.decoration,
          child: Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: .8.sw,
              height: 0.4.sh,
            ),
          ),
        ),
      ),
    );
  }
}
