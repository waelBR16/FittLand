
import 'package:fiiland/common_widget/tab_botton.dart';

import 'package:fiiland/view/home/home_view.dart';
import 'package:fiiland/view/main_tab/select_view.dart';
import 'package:fiiland/view/profile/profile_view.dart';
import 'package:flutter/material.dart';

import '../../common/color_ext.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget curentTab = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: PageStorage(bucket: pageBucket, child: curentTab,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: TColor.primaryG),
                borderRadius: BorderRadius.circular(35),
                 boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 2, offset: Offset(0, -2))]),
                child: Icon(Icons.search,color:TColor.white, size: 35,),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        child: BottomAppBar(
          surfaceTintColor: TColor.white,
          child: Container(
            decoration: BoxDecoration(color: TColor.white, boxShadow: const [

            ]),
            height: kToolbarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                    icon: "assets/img/home.png",
                    selectIcon: "assets/img/home_tab_select.png",
                    isActive: selectTab == 0,
                    onTap: () {
                      selectTab = 0;
                      curentTab = const HomeView();
                      if (mounted) {
                        setState(() {});
                      }
                    }),
                TabButton(
                    icon: "assets/img/activity.png",
                    selectIcon: "assets/img/activity_tab_select.png",
                    isActive: selectTab == 1,
                    onTap: () {
                      selectTab = 1;
                      curentTab = const SelectView();
                      if (mounted) {
                        setState(() {});
                      }
                    }),
                    const SizedBox(width: 40,),
                TabButton(
                    icon: "assets/img/camera.png",
                    selectIcon: "assets/img/camera_tab_select.png",
                    isActive: selectTab == 2,
                    onTap: () {
                      selectTab = 2;
                      curentTab = const HomeView();
                      if (mounted) {
                        setState(() {});
                      }
                    }),
                TabButton(
                    icon: "assets/img/profile_1.png",
                    selectIcon: "assets/img/profile_tab_select.png",
                    isActive: selectTab == 3,
                    onTap: () {
                      selectTab = 3;
                      curentTab = const ProfileView();
                      if (mounted) {
                        setState(() {});
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
