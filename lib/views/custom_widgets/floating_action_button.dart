import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turnip/models/utils/app_colors.dart';

import '../../controllers/cubits/home_page_view_index_cubit.dart';
import '../../models/utils/app_icons.dart';
import '../home_views/home_view_contents.dart';

class FloatingActionBotton extends StatelessWidget {
  final PageController homePageViewController;

  const FloatingActionBotton({super.key, required this.homePageViewController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageViewIndexCubit , int>(
      builder: (context, state) {
        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: (){
            //********************************************
            context.read< HomePageViewIndexCubit >().setIndex(pageIndex: 1);
            //********************************************
            homePageViewController.animateToPage(
              1,
              duration: const Duration(
                milliseconds: 1,
              ),
              curve: Curves.easeInOut,
            );

          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.firstBlue,
                  AppColors.secondBlue,
                ],
              ),
            ),
            child: Icon(
              AppIcons.camera_two,
              size: 66.66.sp,
              color: AppColors.pureWhite,
            ),
          ),
        );
      },
    );
  }
}
