import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/settings/domain/entity/language_entity.dart';
import 'package:zunote/features/settings/domain/entity/theme_entity.dart';

class ThemeLocalService {
  final List<ThemeEntity> _themeList = [
    ThemeEntity(
      color1: const Color(0xFFFFC330),
      color2: const Color(0xFFFCD36E),
      isSelected: false,
    ),
    ThemeEntity(
      color1: const Color(0xFF6D6D6E),
      color2: const Color(0xFF979797),
      isSelected: false,
    ),
    ThemeEntity(
      color1: const Color(0xFF9C937D),
      color2: const Color(0xFFB5A98B),
      isSelected: false,
    ),
    ThemeEntity(
      color1: const Color(0xFFF5C29E),
      color2: const Color(0xFFC5B0A6),
      isSelected: false,
    ),
    ThemeEntity(
      color1: const Color(0xFFA89891),
      color2: const Color(0xFFF5C29E),
      isSelected: false,
    ),
    ThemeEntity(
      color1: const Color(0xFF0DBFEC),
      color2: const Color(0xFF75D2F4),
      isSelected: false,
    ),
    ThemeEntity(
      color1: const Color(0xFFB295C7),
      color2: const Color(0xFFF495D4),
      isSelected: false,
    ),
    ThemeEntity(
      color1: const Color(0xFF32E48E),
      color2: const Color(0xFF44CE31),
      isSelected: false,
    ),
    ThemeEntity(
      color1: const Color(0xB80DBFEC),
      color2: const Color(0xC075D2F4),
      isSelected: false,
    ),
  ];

  final List<LanguageEntity> _languageList = [
    LanguageEntity(
      symbol: 'en-US',
      iconPath: AppStyle.instance.englishIconPath,
      isSelected: true,
    ),
    LanguageEntity(
      symbol: 'tr-TR',
      iconPath: AppStyle.instance.turkishIconPath,
      isSelected: false,
    ),
    LanguageEntity(
      symbol: 'de-US',
      iconPath: AppStyle.instance.germanIconPath,
      isSelected: false,
    ),
    LanguageEntity(
      symbol: 'en-US',
      iconPath: AppStyle.instance.arabicIconPath,
      isSelected: false,
    )
  ];

  List<ThemeEntity> getThemeList() => _themeList;
  List<LanguageEntity> getLanguageList() => _languageList;
}
