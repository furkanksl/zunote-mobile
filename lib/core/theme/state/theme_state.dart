class ThemeState {
  int? themeIndex;

  ThemeState({
    this.themeIndex,
  });

  ThemeState copyWith({
    int? themeIndex,
  }) {
    return ThemeState(
      themeIndex: themeIndex ?? this.themeIndex,
    );
  }
}
