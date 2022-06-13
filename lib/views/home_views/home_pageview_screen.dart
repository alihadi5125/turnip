import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turnip/views/home_views/create_tab_views/create_tab_screen.dart';
import 'package:turnip/views/home_views/setting_tab_views/setting_tab_screen.dart';

import '../../controllers/cubits/home_page_view_index_cubit.dart';
import '../../models/utils/app_drawer.dart';
import '../custom_widgets/bottom_navigation_bar.dart';
import '../custom_widgets/floating_action_button.dart';
import 'home_tab_views/home_tab_screen.dart';
import 'home_view_contents.dart';

class HomePageViewScreen extends StatefulWidget {
  const HomePageViewScreen({Key? key}) : super(key: key);

  @override
  State<HomePageViewScreen> createState() => _HomePageViewScreenState();
}

class _HomePageViewScreenState extends State<HomePageViewScreen> {
  PageController homePageViewController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder< HomePageViewIndexCubit , int>(
      builder: (context, pageIndex) {
        return Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          key: HomeViewContents.drawerKey,
          drawer: const AppDrawer(),
          drawerEnableOpenDragGesture: true,
          drawerScrimColor: Colors.black54,
          floatingActionButtonLocation: FloatingActionButtonLocation
              .centerDocked,
          floatingActionButton: FloatingActionBotton(
              homePageViewController: homePageViewController ),
          bottomNavigationBar:  BottomNavBar(
            homePageViewController: homePageViewController,
          ),
          body: SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: homePageViewController,
              children:  const [
                HomeTabScreen(), //0
                CreateTabScreen(), //1
                // SettingTabScreen(
                //   homePageViewController: homePageViewController,
                // ), //2
              ],
            ),
          ),
        );
      },
    );
  }
}
