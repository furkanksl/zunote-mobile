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

  // Style const
  final primaryColor = 0xFFFFC330;
  final primaryDarkColor = 0xFF3C3C3C;
  final secondaryColor = 0xFFFCD36E;

  final boxShadow = const [
    BoxShadow(
      color: Colors.black26,
      offset: Offset(0, 4),
      blurRadius: 4,
    )
  ];
}
