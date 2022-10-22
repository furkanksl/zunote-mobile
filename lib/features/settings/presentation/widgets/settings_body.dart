import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/features/settings/data/service/theme_local_service.dart';
import 'package:zunote/features/settings/presentation/widgets/language_list_widget.dart';
import 'package:zunote/features/settings/presentation/widgets/notification_section_widget.dart';
import 'package:zunote/features/settings/presentation/widgets/settings_card_widget.dart';
import 'package:zunote/features/settings/presentation/widgets/theme_list_widget.dart';

class SettingsBody extends StatelessWidget {
  SettingsBody({Key? key}) : super(key: key);

  final themeLocalService = ThemeLocalService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 100.w,
        child: Column(
          children: [
            const SettingsCard(
              cardName: 'NOTIFICATION',
              child: NotificationSection(),
            ),
            const SizedBox(height: 20),
            SettingsCard(
              cardName: 'THEME',
              child: ThemeList(
                list: themeLocalService.getThemeList(),
              ),
            ),
            const SizedBox(height: 20),
            SettingsCard(
              cardName: 'LANGUAGE',
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
