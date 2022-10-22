import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/data/service/app_local_service.dart';

import 'package:zunote/core/theme/app_theme.dart';
import 'package:zunote/core/theme/state/theme_provider.dart';
import 'package:zunote/features/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appLocalService = AppLocalService();
  final int themeIndex = await appLocalService.getThemeIndex();

  runApp(
    ProviderScope(
      child: MyApp(
        themeIndex: themeIndex,
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
        debugShowCheckedModeBanner: false,
        theme: AppTheme.myThemes[themeIndex ?? this.themeIndex],
        color: Theme.of(context).scaffoldBackgroundColor,
        home: const SplashScreen(),
      ),
    );
  }
}
