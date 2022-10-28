import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/data/service/app_local_service.dart';
import 'package:zunote/core/theme/app_theme.dart';
import 'package:zunote/core/theme/state/theme_provider.dart';
import 'package:zunote/features/splash/splash_screen.dart';
import 'package:zunote/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final appLocalService = AppLocalService();
  final int themeIndex = await appLocalService.getThemeIndex();

  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('tr', 'TR'),
          Locale('de', 'DE'),
          Locale('ar', 'AE'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en', 'US'),
        child: MyApp(
          themeIndex: themeIndex,
        ),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
    required this.themeIndex,
  });

  final int themeIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeIndex = ref.watch(themeProvider).themeIndex;

    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: 'ZUNOTE',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.myThemes[themeIndex ?? this.themeIndex],
        color: Theme.of(context).scaffoldBackgroundColor,
        home: const SplashScreen(),
      ),
    );
  }
}
