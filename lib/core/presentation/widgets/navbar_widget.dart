// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/data/service/utility_service.dart';
import 'package:zunote/core/presentation/snackbars/error_snackbar.dart';
import 'package:zunote/core/presentation/widgets/widget_shadower_widget.dart';
import 'package:zunote/features/auth/presentation/auth_screen.dart';
import 'package:zunote/features/auth/presentation/state/auth_provider.dart';
import 'package:zunote/features/settings/presentation/settings_screen.dart';

class NavBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<NavBar> createState() => _NavBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _NavBarState extends ConsumerState<NavBar> {
  final GlobalKey<PopupMenuButtonState<int>> popupButtonKey = GlobalKey();
  final UtilityService utilityService = UtilityService();

  bool isMenuOpen = false;

  toggleMenu() => setState(() => isMenuOpen = !isMenuOpen);

  @override
  Widget build(BuildContext context) {
    final _authRepositoryProvider = ref.read(authRepositoryProvider);

    return AppBar(
      backgroundColor: Colors.transparent, //Theme.of(context).scaffoldBackgroundColor,
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
          child: PopupMenuButton(
            key: popupButtonKey,
            padding: EdgeInsets.zero,
            color: Theme.of(context).cardColor,
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
            onSelected: (value) async {
              if (value == 0) Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
              if (value == 2) {
                final result = await _authRepositoryProvider.signOut();

                result.fold((l) {
                  SnackBar snackBar = errorSnackBar(
                    l.message.toString(),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, (r) => utilityService.navigateTo(context, const AuthScreen()));
              }
            },
            itemBuilder: (ctx) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: SizedBox(
                    width: (100.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppStyle.instance.settingsIconPath,
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Text("settings".tr()),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: SizedBox(
                    width: (100.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppStyle.instance.aboutIconPath,
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Text("about".tr()),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: SizedBox(
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppStyle.instance.logoutIconPath,
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Text("logout".tr()),
                      ],
                    ),
                  ),
                ),
              ];
            },
            child: GestureDetector(
              onTap: () async {
                toggleMenu();

                bool? isClosed = await popupButtonKey.currentState?.showButtonMenu() ?? true;

                if (isClosed) {
                  toggleMenu();
                }
              },
              child: Container(
                constraints: const BoxConstraints(maxWidth: 45),
                width: 20.w,
                child: WidgetShadower(
                  child: SvgPicture.asset(
                    isMenuOpen ? AppStyle.instance.closeIconPath : AppStyle.instance.menuIconPath,
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
