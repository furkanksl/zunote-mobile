// ignore_for_file: must_be_immutable, use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/widgets/bottom_navbar_button_widget.dart';
import 'package:zunote/features/home/presentation/state/home_state.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int? navIndex = ref.watch(homePageProvider).navIndex;

    setIndex(int index) => ref.read(homePageProvider.notifier).setNavIndex(index);

    return Container(
      height: 150,
      width: 100.w,
      margin: const EdgeInsets.only(top: 20),
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: orderedMenuItems(context, navIndex, setIndex),
      ),
    );
  }

  List<Widget> orderedMenuItems(
    BuildContext context,
    int? navIndex,
    void setIndex(int index),
  ) {
    List<Widget> orderedMenu = [
      Positioned(
        left: 50,
        right: 50,
        top: 110,
        child: Container(
          width: 100.w,
          height: 100.w,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(100.w),
          ),
        ),
      ),
      Positioned(
        right: 50.w + 50,
        child: BottomNavBarButton(
          iconPath: AppStyle.instance.subscriptionIconPath,
          isSelected: navIndex == 0,
          angle: -0.5,
          margin: 0,
          onClick: () => setIndex(0),
        ),
      ),
      Positioned(
        left: 50.w + 50,
        child: BottomNavBarButton(
          iconPath: AppStyle.instance.notesIconPath,
          isSelected: navIndex == 2,
          angle: 0.5,
          margin: 0,
          onClick: () => setIndex(2),
        ),
      ),
      Positioned(
        right: 50.w - 50,
        // left: 50.w,
        width: 100,
        child: BottomNavBarButton(
          iconPath: AppStyle.instance.homeIconPath,
          isSelected: navIndex == 1,
          angle: 0,
          margin: 50,
          onClick: () => setIndex(1),
        ),
      ),
    ];

    if (navIndex == 2) {
      return [
        orderedMenu[0],
        orderedMenu[1],
        orderedMenu[3],
        orderedMenu[2],
      ];
    } else if (navIndex == 0) {
      return [
        orderedMenu[0],
        orderedMenu[2],
        orderedMenu[3],
        orderedMenu[1],
      ];
    }

    return orderedMenu;
  }
}
