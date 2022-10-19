import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/widgets/widget_shadower_widget.dart';
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
    final toggleMenu = ref.watch(homePageProvider).toggleMenu ?? false;

    return AppBar(
      backgroundColor: Color(AppStyle.instance.primaryColor),
      elevation: 0,
      titleSpacing: 0,
      leadingWidth: 130,
      leading: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        constraints: const BoxConstraints(maxWidth: 130),
        width: 130,
        child: SimpleShadow(
          color: Colors.black,
          child: SvgPicture.asset(AppStyle.instance.logoMiniPath),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () async {
              ref.read(homePageProvider.notifier).setToggle(true);

              bool? isClosed = await popupButtonKey.currentState?.showButtonMenu();
              if (isClosed!) {
                ref.read(homePageProvider.notifier).setToggle(false);
              }
            },
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
              enabled: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              tooltip: "Menu",
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
                            child: WidgetShadower(
                              child: SvgPicture.asset(AppStyle.instance.aboutIconPath),
                            ),
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
                            child: WidgetShadower(
                              child: SvgPicture.asset(AppStyle.instance.logoutIconPath),
                            ),
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
                child: WidgetShadower(
                  child: SvgPicture.asset(
                    toggleMenu ? AppStyle.instance.closeIconPath : AppStyle.instance.menuIconPath,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
