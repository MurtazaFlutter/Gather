import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

import '../../../controllers/main_screen_notifier.dart';
import 'bottom_bar_icons.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return SafeArea(
        child: Container(
          height: 62.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BottomNavBarIcons(
                onTap: () {
                  mainScreenNotifier.pageIndex = 0;
                },
                iconData: mainScreenNotifier.pageIndex == 0
                    ? MaterialCommunityIcons.home
                    : MaterialCommunityIcons.home_outline,
              ),
              BottomNavBarIcons(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 1;
                  },
                  iconData: mainScreenNotifier.pageIndex == 1
                      ? Ionicons.search
                      : Ionicons.search_outline),
              BottomNavBarIcons(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 2;
                  },
                  iconData: mainScreenNotifier.pageIndex == 2
                      ? Ionicons.heart
                      : Ionicons.heart_outline),
              BottomNavBarIcons(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 3;
                  },
                  iconData: mainScreenNotifier.pageIndex == 3
                      ? Ionicons.person
                      : Ionicons.person_outline),
            ],
          ),
        ),
      );
    });
  }
}
