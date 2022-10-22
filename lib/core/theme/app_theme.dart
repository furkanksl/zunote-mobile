import 'package:flutter/material.dart';

class AppTheme {
  // Private Constructor
  AppTheme._();

  static final defaultTheme = ThemeData(
    primaryColor: const Color(0xFFFFC330),
    dividerColor: const Color(0xFF3C3C3C),
    cardColor: const Color(0xFFFCD36E),
    fontFamily: 'NotoSans',
    scaffoldBackgroundColor: const Color(0xFFFFC330),
    indicatorColor: const Color(0xFFD9D9D9),
    canvasColor: const Color(0xFFFFB500),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Color(0xFF747474),
      ),
    ),
  );

  static final customTheme1 = defaultTheme.copyWith(
    scaffoldBackgroundColor: const Color(0xFF6D6D6E),
    cardColor: const Color(0xFF979797),
    canvasColor: const Color(0xFFADAAAA),
  );

  static final customTheme2 = defaultTheme.copyWith(
    scaffoldBackgroundColor: const Color(0xFF9C937D),
    cardColor: const Color(0xFFB5A98B),
    canvasColor: const Color(0xFFB39E67),
  );

  static final customTheme3 = defaultTheme.copyWith(
    scaffoldBackgroundColor: const Color(0xFFF5C29E),
    cardColor: const Color(0xFFC5B0A6),
    canvasColor: const Color(0xFFE8CFC3),
  );

  static final customTheme4 = defaultTheme.copyWith(
    scaffoldBackgroundColor: const Color(0xFFA89891),
    cardColor: const Color(0xFFF5C29E),
    canvasColor: const Color(0xFFFFDCC4),
  );

  static final customTheme5 = defaultTheme.copyWith(
    scaffoldBackgroundColor: const Color(0xFF0DBFEC),
    cardColor: const Color(0xFF75D2F4),
    canvasColor: const Color(0xFF50C4EE),
  );

  static final customTheme6 = defaultTheme.copyWith(
    scaffoldBackgroundColor: const Color(0xFFB295C7),
    cardColor: const Color(0xFFF495D4),
    canvasColor: const Color(0xFFCEACE6),
  );

  static final customTheme7 = defaultTheme.copyWith(
    scaffoldBackgroundColor: const Color(0xFF32E48E),
    cardColor: const Color(0xFF44CE31),
    canvasColor: const Color(0xFF5CDA4C),
  );

  static final myThemes = [
    defaultTheme,
    customTheme1,
    customTheme2,
    customTheme3,
    customTheme4,
    customTheme5,
    customTheme6,
    customTheme7,
  ];
}
