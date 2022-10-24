// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/features/settings/data/service/settings_local_service.dart';
import 'package:zunote/features/settings/presentation/widgets/language_list_widget.dart';
import 'package:zunote/features/settings/presentation/widgets/notification_section_widget.dart';
import 'package:zunote/features/settings/presentation/widgets/settings_card_widget.dart';
import 'package:zunote/features/settings/presentation/widgets/theme_list_widget.dart';

class SettingsBody extends StatelessWidget {
  SettingsBody({Key? key}) : super(key: key);

  final themeLocalService = SettingsLocalService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 100.w,
        child: Column(
          children: [
            SettingsCard(
              cardName: 'notification'.tr(),
              child: NotificationSection(),
            ),
            const SizedBox(height: 20),
            SettingsCard(
              cardName: 'theme'.tr(),
              child: ThemeList(
                list: themeLocalService.getThemeList(),
              ),
            ),
            const SizedBox(height: 20),
            SettingsCard(
              cardName: 'language'.tr(),
              child: LanguageList(
                list: themeLocalService.getLanguageList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
