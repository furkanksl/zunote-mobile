import 'package:flutter/material.dart';

class AppStyle {
  AppStyle._privateConstructor();
  static final AppStyle _instance = AppStyle._privateConstructor();
  static AppStyle get instance => _instance;

  // Asset consts
  final logoPath = 'assets/icons/logo.svg';
  final emailIconPath = 'assets/icons/email.svg';
  final passwordIconPath = 'assets/icons/password.svg';
  final playStoreIconPath = 'assets/icons/play-store.svg';
  final appStpreIconPath = 'assets/icons/apple-store.svg';
  final menuIconPath = 'assets/icons/menu.svg';
  final closeIconPath = 'assets/icons/close.svg';
  final aboutIconPath = 'assets/icons/about.svg';
  final logoutIconPath = 'assets/icons/logout.svg';
  final categoryIconPath = 'assets/icons/category.svg';
  final reminderIconPath = 'assets/icons/reminder.svg';
  final microphoneIconPath = 'assets/icons/microphone.svg';
  final addIconPath = 'assets/icons/add.svg';
  final zuWordIconPath = 'assets/icons/zu_word.svg';
  final noteWordIconPath = 'assets/icons/note_word.svg';
  final thunderIconPath = 'assets/icons/thunder.svg';
  final grayAddIconPath = 'assets/icons/gray_add.svg';
  final removeIconPath = 'assets/icons/remove.svg';

  // Style const
  final primaryColor = 0xFFFFC330;
  final primaryDarkColor = 0xFF3C3C3C;
  final secondaryColor = 0xFFFCD36E;
  final grayColor = 0xFFD9D9D9;
  final grayishTextColor = 0xFF747474;

  final boxShadow = const [
    BoxShadow(
      color: Colors.black26,
      offset: Offset(0, 4),
      blurRadius: 4,
    )
  ];
}
