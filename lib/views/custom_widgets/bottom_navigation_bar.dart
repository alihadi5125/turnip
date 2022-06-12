import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turnip/models/utils/app_strings.dart';

import '../../controllers/cubits/home_page_view_index_cubit.dart';
import '../../models/utils/app_colors.dart';
import '../../models/utils/app_icons.dart';
import '../home_views/home_view_contents.dart';
import '../home_views/setting_tab_views/setting_tab_screen.dart';

class BottomNavBar extends StatelessWidget {
  final PageController homePageViewController;

  const BottomNavBar({super.key, required this.homePageViewController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.sp,
      width: 1.sw,
      margin: EdgeInsets.only(
        bottom: 120.sp,
      ),
      // color: Colors.red,
      padding: EdgeInsets.only(
        left: 0.sp,
        right: 0.sp,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          400.sp,
        ),
        child: BottomAppBar(
          color: AppColors.greyOne,
          elevation: 0,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          child: Padding(
            padding: EdgeInsets.only(
              top: 50.sp,
            ),
            child: BlocBuilder<HomePageViewIndexCubit, int>(
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          context
                              .read<HomePageViewIndexCubit>()
                              .setIndex(pageIndex: 0);
                          homePageViewController.animateToPage(
                            0,
                            duration: const Duration(
                              milliseconds: 1,
                            ),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                AppIcons.home,
                                color: state == 0
                                    ? AppColors.thirdBlue
                                    : AppColors.firstGrey,
                                size: 65.67.sp,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    AppStrings.homeTabSecondText,
                                    style: GoogleFonts.nunitoSans(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 50.sp,
                                      color: state == 0
                                          ? AppColors.thirdBlue
                                          : AppColors.firstGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  AppStrings.homeTabThirdText,
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 50.sp,
                                    color: AppColors.fullBlack,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SettingTabScreen(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                AppIcons.setting,
                                color: AppColors.firstGrey,
                                size: 65.67.sp,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    AppStrings.homeTabFourthText,
                                    style: GoogleFonts.nunitoSans(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 50.sp,
                                      color:  AppColors.firstGrey,
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
