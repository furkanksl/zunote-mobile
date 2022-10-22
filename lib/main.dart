import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/theme/app_theme.dart';
import 'package:zunote/core/theme/state/theme_provider.dart';
import 'package:zunote/core/theme/state/theme_state_notifier.dart';
import 'package:zunote/features/splash/splash_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeIndex = ref.watch(themeProvider).themeIndex;

    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: 'ZUNOTE',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.myThemes[themeIndex ?? 0],
        color: Theme.of(context).scaffoldBackgroundColor,
        home: const SplashScreen(),
      ),
    );
  }
}
