import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_colors.dart';
import 'package:turnip/models/utils/app_strings.dart';
import 'package:turnip/views/custom_widgets/app_bar.dart';
import 'package:turnip/views/custom_widgets/setting_custom_container.dart';
import 'package:turnip/views/home_views/home_pageview_screen.dart';
import 'package:turnip/views/home_views/home_view_contents.dart';
import 'package:turnip/views/home_views/setting_tab_views/edit_profile_screen.dart';
import 'package:turnip/views/home_views/setting_tab_views/privacy_policy_screen.dart';
import 'package:turnip/views/home_views/setting_tab_views/terms_and_conditions.dart';

class SettingTabScreen extends StatefulWidget {
  const SettingTabScreen({
    super.key,
  });

  @override
  State<SettingTabScreen> createState() => _SettingTabScreenState();
}

class _SettingTabScreenState extends State<SettingTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhite,
      body: ListView(
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
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfileScreen(),
                ),
              );
            },
            child: SettingCustomContainer(
              title: AppStrings.settingScreenFirstText,
              icon: Icons.arrow_forward,
              functionality: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfileScreen(),
                  ),
                );
              },
              addContainer: true,
            ),
          ),
          SizedBox(
            height: 60.sp,
          ),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrivacyPolicyScreen(),
                ),
              );
            },
            child: SettingCustomContainer(
              title: AppStrings.settingScreenSecondText,
              icon: Icons.arrow_forward,
              functionality: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyScreen(),
                  ),
                );
              },
              addContainer: true,
            ),
          ),
          SizedBox(
            height: 60.sp,
          ),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TermsAndConditions(),
                ),
              );
            },
            child: SettingCustomContainer(
              title: AppStrings.settingScreenThirdText,
              icon: Icons.arrow_forward,
              functionality: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermsAndConditions(),
                  ),
                );
              },
              addContainer: true,
            ),
          ),
          SizedBox(
            height: 60.sp,
          ),
          SettingCustomContainer(
            title: AppStrings.settingScreenFourthText,
            icon: Icons.arrow_forward,
            functionality: () {},
            addContainer: true,
          ),
        ],
      ),
    );
  }
}
