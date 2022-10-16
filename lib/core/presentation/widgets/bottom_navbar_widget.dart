// ignore_for_file: must_be_immutable

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
      height: 100,
      width: 100.w,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(3, -4),
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.black26,
          ),
        ],
        color: Color(AppStyle.instance.primaryColor),
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(15),
          right: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavBarButton(
            iconPath: AppStyle.instance.subscriptionIconPath,
            isSelected: navIndex == 0,
            onClick: () => setIndex(0),
          ),
          BottomNavBarButton(
            iconPath: AppStyle.instance.homeIconPath,
            isSelected: navIndex == 1,
            onClick: () => setIndex(1),
          ),
          BottomNavBarButton(
            iconPath: AppStyle.instance.notesIconPath,
            isSelected: navIndex == 2,
            onClick: () => setIndex(2),
          ),
        ],
      ),
    );
  }
}
