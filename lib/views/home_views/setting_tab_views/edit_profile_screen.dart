import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_strings.dart';
import 'package:turnip/views/custom_widgets/app_bar.dart';
import 'package:turnip/views/custom_widgets/app_buttons.dart';
import 'package:turnip/views/custom_widgets/setting_custom_container.dart';

import '../../../models/utils/app_icons.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

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
              title: AppStrings.settingScreenFirstText,
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
            SettingCustomContainer(
              title: AppStrings.editProfileFirstText,
              icon: Icons.edit_calendar,
              functionality: () {},
              addContainer: false,
            ),
            SizedBox(
              height: 60.sp,
            ),
            SettingCustomContainer(
              title: AppStrings.editProfileSecondText,
              icon: Icons.edit_calendar,
              functionality: () {},
              addContainer: false,
            ),
            SizedBox(
              height: 60.sp,
            ),
            SettingCustomContainer(
              title: AppStrings.editProfileThirdText,
              icon: AppIcons.calender,
              functionality: () {},
              addContainer: false,
            ),
            SizedBox(
              height: 1768.sp,
            ),
            AppButtons.whiteFilledButton(
              onTopText: AppStrings.editProfileButtonText,
              padding: EdgeInsets.only(
                left: 100.sp,
                right: 100.sp,
              ),
              fillColor: AppColors.fullBlack,
              textColor: AppColors.pureWhite,
            )
          ],
        ),
      ),
    );
  }
}
