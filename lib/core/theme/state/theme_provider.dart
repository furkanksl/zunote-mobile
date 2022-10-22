import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zunote/core/theme/state/theme_state.dart';
import 'package:zunote/core/theme/state/theme_state_notifier.dart';

final themeProvider = StateNotifierProvider<ThemeProvider, ThemeState>(
  (ref) => ThemeProvider(
    ThemeState(
      themeIndex: 0,
    ),
  ),
);
