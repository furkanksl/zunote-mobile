import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/home/presentation/state/home_state.dart';

class NavBar extends ConsumerWidget implements PreferredSizeWidget {
  NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final GlobalKey<PopupMenuButtonState<int>> popupButtonKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleMenu = ref.watch(homePageProvider).toggleMenu;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: 0,
      leadingWidth: 130,
      leading: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        constraints: const BoxConstraints(maxWidth: 130),
        width: 130,
        child: SvgPicture.asset(AppStyle.instance.logoPath),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: PopupMenuButton(
            key: popupButtonKey,
            padding: EdgeInsets.zero,
            color: Color(AppStyle.instance.secondaryColor),
            position: PopupMenuPosition.over,
            constraints: BoxConstraints(
              maxWidth: (100.w - 20),
            ),
            offset: const Offset(0, 45),
            splashRadius: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: SizedBox(
                    width: (100.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 35,
                          child: SvgPicture.asset(AppStyle.instance.aboutIconPath),
                        ),
                        const SizedBox(width: 10),
                        const Text("About"),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: SizedBox(
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 35,
                          child: SvgPicture.asset(AppStyle.instance.logoutIconPath),
                        ),
                        const SizedBox(width: 10),
                        const Text("Logout"),
                      ],
                    ),
                  ),
                ),
              ];
            },
            child: Container(
              constraints: const BoxConstraints(maxWidth: 45),
              width: 20.w,
              child: GestureDetector(
                onTap: () {
                  ref.read(homePageProvider.notifier).setToggle(true);

                  popupButtonKey.currentState?.showButtonMenu();
                },
                child: SvgPicture.asset(
                  toggleMenu! ? AppStyle.instance.closeIconPath : AppStyle.instance.menuIconPath,
                ),
              ),
            ),
            onCanceled: () => ref.read(homePageProvider.notifier).setToggle(false),
            onSelected: (value) {
              if (value == 0) {
                print("My account menu is selected.");
              } else if (value == 1) {
                print("Settings menu is selected.");
              }
              ref.read(homePageProvider.notifier).setToggle(false);
            },
          ),
        ),
      ],
    );
  }
}
