import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zunote/core/theme/state/theme_state.dart';

class ThemeProvider extends StateNotifier<ThemeState> {
  ThemeProvider(ThemeState state) : super(state);

  void setThemeIndex(int index) => state = state.copyWith(themeIndex: index);
}
