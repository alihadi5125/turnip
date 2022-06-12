import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/views/home_views/profile_views/profile_screen.dart';

import '../../../models/utils/app_icons.dart';
import '../../../models/utils/app_strings.dart';
import '../../custom_widgets/app_bar.dart';

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      color: AppColors.pureWhite,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          CustomAppBar(
            leadingIcon: AppIcons.menu,
            title: AppStrings.homeTabFirstText,
            trailingIcon: AppIcons.user,
            backgroundColor: AppColors.pureWhite,
            visibilityData: true,
            leadingButtonFunctionality: () {},
            trailingButtonFunctionality: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
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
                itemCount: 11,
                padding: EdgeInsets.only(
                  top: 10.sp,
                  left: 100.sp,
                  right: 100.sp,
                  bottom: 0.28.sh,
                ),
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
                    'assets/images/Rectangle 51.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
