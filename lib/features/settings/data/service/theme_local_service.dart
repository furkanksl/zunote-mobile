import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/settings/domain/entity/language_entity.dart';
import 'package:zunote/features/settings/domain/entity/theme_entity.dart';

class ThemeLocalService {
  final List<ThemeEntity> _themeList = [
    ThemeEntity(
      color1: Colors.red,
      color2: Colors.black,
      isSelected: true,
    ),
    ThemeEntity(
      color1: Colors.blue,
      color2: Colors.white,
      isSelected: false,
    ),
    ThemeEntity(
      color1: Colors.grey,
      color2: Colors.yellow,
      isSelected: false,
    ),
    ThemeEntity(
      color1: Colors.white,
      color2: Colors.black,
      isSelected: false,
    ),
    ThemeEntity(
      color1: Colors.orange,
      color2: Colors.green,
      isSelected: false,
    ),
    ThemeEntity(
      color1: Colors.brown,
      color2: Colors.black,
      isSelected: false,
    ),
    ThemeEntity(
      color1: Colors.grey,
      color2: Colors.yellow,
      isSelected: false,
    ),
    ThemeEntity(
      color1: Colors.white,
      color2: Colors.black,
      isSelected: false,
    ),
    ThemeEntity(
      color1: Colors.orange,
      color2: Colors.green,
      isSelected: false,
    ),
    ThemeEntity(
      color1: Colors.brown,
      color2: Colors.black,
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
