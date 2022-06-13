import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      width: 1.sw / 1.4,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(80.sp),
          bottomRight: Radius.circular(80.sp),
        ),
        child: Drawer(
          elevation: 0.0,
          backgroundColor: Colors.black26,
          child: Container(
            height: 1.sh,
            width: 1.sw,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Group 298.png'),
                  fit: BoxFit.fill),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0.sp,
                  left: 0.sp,
                  right: 0.sp,
                  child: Container(),
                ),
              ],
            ),
          ),
          // child: ListView(
          //   shrinkWrap: true,
          //   padding: EdgeInsets.zero,
          //   physics: const NeverScrollableScrollPhysics(),
          //   children: [
          //     SizedBox(
          //       height: 15.sp,
          //     ),
          //     Container(
          //       height: 40.sp,
          //       width: 1.sw,
          //       alignment: Alignment.centerRight,
          //       padding: EdgeInsets.only(
          //         right: 10.sp,
          //       ),
          //       child: InkWell(
          //         onTap: () {
          //           Navigator.of(context).pop();
          //         },
          //         child: Icon(
          //           AppIcons.cross_circle,
          //           color: AppColors.themeYellowColor,
          //           size: 25.sp,
          //         ),
          //       ),
          //     ),
          //     InkWell(
          //       splashColor: Colors.transparent,
          //       highlightColor: Colors.transparent,
          //       onTap: (){
          //         context.read<MainPageViewCubit>().setIndexMainPageView(pageIndex: 5);
          //         PageViewControllers.mainPageViewController.jumpToPage(5);
          //         Navigator.of(context).pop();
          //       },
          //       child: Container(
          //         height: 170.sp,
          //         padding: EdgeInsets.only(
          //           left: 28.sp,
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Expanded(
          //               flex: 0,
          //               child: Container(
          //                 height: 45.sp,
          //                 width: 45.sp,
          //                 decoration: BoxDecoration(
          //                   color: AppColors.themeYellowColor,
          //                   shape: BoxShape.circle,
          //                 ),
          //                 child: Icon(
          //                   AppIcons.user,
          //                   color: AppColors.pureWhiteColor,
          //                   size: 20.sp,
          //                 ),
          //               ),
          //             ),
          //             Expanded(
          //               flex: 0,
          //               child: SizedBox(
          //                 height: 5.sp,
          //               ),
          //             ),
          //             Expanded(
          //               flex: 0,
          //               child: Text(
          //                 'Muzamil Afridi',
          //                 style: TextStyle(
          //                   fontFamily: 'Montserrat',
          //                   color: AppColors.pureWhiteColor,
          //                   fontWeight: FontWeight.w700,
          //                   fontSize: 16.sp,
          //                 ),
          //               ),
          //             ),
          //             Expanded(
          //               flex: 0,
          //               child: SizedBox(
          //                 height: 5.sp,
          //               ),
          //             ),
          //             Expanded(
          //               flex: 0,
          //               child: Text(
          //                 'mfkhan816@gmail.com',
          //                 style: TextStyle(
          //                   fontFamily: 'Montserrat',
          //                   color: AppColors.greyColor,
          //                   fontWeight: FontWeight.w400,
          //                   fontSize: 11.5.sp,
          //                 ),
          //               ),
          //             ),
          //             Expanded(
          //               flex: 0,
          //               child: SizedBox(
          //                 height: 15.sp,
          //               ),
          //             ),
          //             Expanded(
          //               flex: 0,
          //               child: Padding(
          //                 padding: EdgeInsets.only(
          //                   right: 50.sp,
          //                 ),
          //                 child: Container(
          //                   height: 44.5.sp,
          //                   decoration: BoxDecoration(
          //                     color: AppColors.premiumContainerColor,
          //                     borderRadius: BorderRadius.circular(12.sp),
          //                   ),
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: [
          //                       Icon(
          //                         AppIcons.diamond,
          //                         color: AppColors.themeYellowColor,
          //                         size: 20.sp,
          //                       ),
          //                       Text(
          //                         '  Premium User',
          //                         style: TextStyle(
          //                           fontFamily: 'Montserrat',
          //                           color: AppColors.themeYellowColor,
          //                           fontWeight: FontWeight.w700,
          //                           fontSize: 15.sp,
          //                           letterSpacing: -1.sp,
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Divider(
          //       color: AppColors.greyColor,
          //     ),
          //     SizedBox(
          //       height: 15.sp,
          //     ),
          //     Column(
          //       children: [
          //         Expanded(
          //           flex: 0,
          //           child: Padding(
          //             padding: EdgeInsets.only(
          //               left: 40.sp,
          //             ),
          //             child: InkWell(
          //               highlightColor: Colors.transparent,
          //               splashColor: Colors.transparent,
          //               onTap: (){
          //                 context.read<MainPageViewCubit>().setIndexMainPageView(pageIndex: 0);
          //                 PageViewControllers.mainPageViewController.jumpToPage(0);
          //                 Navigator.of(context).pop();
          //               },
          //               child: Row(
          //                 children: [
          //                   Expanded(
          //                     flex: 0,
          //                     child: Icon(
          //                       AppIcons.hometwo,
          //                       color: AppColors.pureWhiteColor,
          //                       size: 27.sp,
          //                     ),
          //                   ),
          //                   Expanded(
          //                     flex: 0,
          //                     child: SizedBox(
          //                       width: 14.sp,
          //                     ),
          //                   ),
          //                   Expanded(
          //                     flex: 0,
          //                     child: Text(
          //                       'Home',
          //                       style: TextStyle(
          //                         fontFamily: 'Montserrat',
          //                         color: AppColors.pureWhiteColor,
          //                         fontSize: 16.sp,
          //                         fontWeight: FontWeight.w600,
          //                       ),
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //         Expanded(
          //           flex: 0,
          //           child: SizedBox(
          //             height: 25.sp,
          //           ),
          //         ),
          //         Expanded(
          //           flex: 0,
          //           child: Padding(
          //             padding: EdgeInsets.only(
          //               left: 40.sp,
          //             ),
          //             child: Row(
          //               children: [
          //                 Expanded(
          //                   flex: 0,
          //                   child: Icon(
          //                     AppIcons.headset,
          //                     color: AppColors.pureWhiteColor,
          //                     size: 23.sp,
          //                   ),
          //                 ),
          //                 Expanded(
          //                   flex: 0,
          //                   child: SizedBox(
          //                     width: 19.sp,
          //                   ),
          //                 ),
          //                 Expanded(
          //                   flex: 0,
          //                   child: Text(
          //                     'Contact Us',
          //                     style: TextStyle(
          //                       fontFamily: 'Montserrat',
          //                       color: AppColors.pureWhiteColor,
          //                       fontSize: 16.sp,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //         Expanded(
          //           flex: 0,
          //           child: SizedBox(
          //             height: 25.sp,
          //           ),
          //         ),
          //         Expanded(
          //           flex: 0,
          //           child: Padding(
          //             padding: EdgeInsets.only(
          //               left: 42.sp,
          //             ),
          //             child: Row(
          //               children: [
          //                 Expanded(
          //                   flex: 0,
          //                   child: Icon(
          //                     AppIcons.settings,
          //                     color: AppColors.pureWhiteColor,
          //                     size: 24.sp,
          //                   ),
          //                 ),
          //                 Expanded(
          //                   flex: 0,
          //                   child: SizedBox(
          //                     width: 17.sp,
          //                   ),
          //                 ),
          //                 Expanded(
          //                   flex: 0,
          //                   child: Text(
          //                     'Settings',
          //                     style: TextStyle(
          //                       fontFamily: 'Montserrat',
          //                       color: AppColors.pureWhiteColor,
          //                       fontSize: 16.sp,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //         Expanded(
          //           flex: 0,
          //           child: SizedBox(
          //             height: 25.sp,
          //           ),
          //         ),
          //         Expanded(
          //           flex: 0,
          //           child: Padding(
          //             padding: EdgeInsets.only(
          //               left: 44.sp,
          //             ),
          //             child: Row(
          //               children: [
          //                 Expanded(
          //                   flex: 0,
          //                   child: Icon(
          //                     AppIcons.signout,
          //                     color: AppColors.pureWhiteColor,
          //                     size: 23.sp,
          //                   ),
          //                 ),
          //                 Expanded(
          //                   flex: 0,
          //                   child: SizedBox(
          //                     width: 17.sp,
          //                   ),
          //                 ),
          //                 Expanded(
          //                   flex: 0,
          //                   child: Text(
          //                     'Logout',
          //                     style: TextStyle(
          //                       fontFamily: 'Montserrat',
          //                       color: AppColors.pureWhiteColor,
          //                       fontSize: 16.sp,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //         Expanded(
          //           flex: 0,
          //           child: SizedBox(
          //             height: 1.sh / 3.1,
          //           ),
          //         ),
          //         Expanded(
          //           flex: 0,
          //           child: Padding(
          //             padding: EdgeInsets.only(
          //               left: 41.sp,
          //               right: 50.sp,
          //             ),
          //             child: Container(
          //               height: 44.5.sp,
          //               decoration: BoxDecoration(
          //                 color: AppColors.themeYellowColor,
          //                 borderRadius: BorderRadius.circular(12.sp),
          //               ),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Icon(
          //                     AppIcons.diamond,
          //                     color: AppColors.secondBlackishColor,
          //                     size: 20.sp,
          //                   ),
          //                   Text(
          //                     '  Upgrade Plan',
          //                     style: TextStyle(
          //                       fontFamily: 'Montserrat',
          //                       color: AppColors.secondBlackishColor,
          //                       fontWeight: FontWeight.w700,
          //                       fontSize: 15.sp,
          //                       letterSpacing: -1.sp,
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
