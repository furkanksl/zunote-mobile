import 'package:flutter/material.dart';

class AppStyle {
  AppStyle._privateConstructor();

  static final AppStyle _instance = AppStyle._privateConstructor();

  static AppStyle get instance => _instance;

  // Asset consts
  final logoPath = 'assets/icons/logo.svg';
  final logoMiniPath = 'assets/icons/logo_mini.svg';
  final emailIconPath = 'assets/icons/email.svg';
  final passwordIconPath = 'assets/icons/password.svg';
  final playStoreIconPath = 'assets/icons/play-store.svg';
  final appStpreIconPath = 'assets/icons/apple-store.svg';
  final menuIconPath = 'assets/icons/menu.svg';
  final closeIconPath = 'assets/icons/close.svg';
  final aboutIconPath = 'assets/icons/about.svg';
  final logoutIconPath = 'assets/icons/logout.svg';
  final categoryIconPath = 'assets/icons/category.svg';
  final categoryBlackIconPath = 'assets/icons/category_black.svg';
  final reminderIconPath = 'assets/icons/reminder.svg';
  final microphoneIconPath = 'assets/icons/microphone.svg';
  final addIconPath = 'assets/icons/add.svg';

  final zuWordIconPath = 'assets/icons/zu_word.svg';
  final noteWordIconPath = 'assets/icons/note_word.svg';
  final thunderIconPath = 'assets/icons/thunder.svg';

  final grayAddIconPath = 'assets/icons/gray_add.svg';
  final removeIconPath = 'assets/icons/remove.svg';
  final homeIconPath = 'assets/icons/home.svg';
  final grayHomeIconPath = 'assets/icons/home_gray.svg';
  final notesIconPath = 'assets/icons/notes.svg';
  final grayNotesIconPath = 'assets/icons/notes_gray.svg';
  final subscriptionIconPath = 'assets/icons/subscription.svg';
  final graySubscriptionIconPath = 'assets/icons/subscription_gray.svg';
  final standartPlanIconPath = 'assets/icons/standart_plan.svg';
  final premiumPlanIconPath = 'assets/icons/premium_plan.svg';
  final upgradeIconPath = 'assets/icons/upgrade.svg';
  final textNoteIconPath = 'assets/icons/text_note.svg';
  final textNoteWhiteIconPath = 'assets/icons/text_note_white.svg';
  final voiceNoteIconPath = 'assets/icons/voice_note.svg';
  final voiceNoteWhiteIconPath = 'assets/icons/voice_note_white.svg';
  final miniPlayIconPath = 'assets/icons/mini_play.svg';
  final miniPauseIconPath = 'assets/icons/mini_pause.svg';
  final trashIconPath = 'assets/icons/trash.svg';
  final settingsIconPath = 'assets/icons/settings.svg';

  final turkishIconPath = 'assets/icons/turkish.svg';
  final englishIconPath = 'assets/icons/english.svg';
  final arabicIconPath = 'assets/icons/arabic.svg';
  final germanIconPath = 'assets/icons/german.svg';

  final boxShadow = const [
    BoxShadow(
      color: Colors.black26,
      offset: Offset(0, 4),
      blurRadius: 4,
    )
  ];
}
