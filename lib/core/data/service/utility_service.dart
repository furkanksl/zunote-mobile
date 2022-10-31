import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:zunote/core/data/error_codes.dart';

class UtilityService {
  bool isNotEmpty(String value) => value != '';

  bool hasMatch(String a, String b) => a == b;

  bool hasValidLength(String value) => value.length > 5;

  bool isValidEmail(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email);
  }

  Future<dynamic> navigateTo(BuildContext context, Widget widget) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(fullscreenDialog: true, builder: (context) => widget),
    );
  }

  String isInlcudeFirebaseErrorCode(String errorMessage) {
    var errorValue = 'Something went wrong!';

    firebaseErrorCodes.forEach((key, value) {
      if (errorMessage.contains(key)) {
        errorValue = value;
      }
    });

    return errorValue;
  }

  LocaleType getCurrentLocaleType(BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);

    switch (currentLocale.languageCode) {
      case 'en':
        return LocaleType.en;
      case 'tr':
        return LocaleType.tr;
      case 'de':
        return LocaleType.de;
      case 'ar':
        return LocaleType.ar;
      default:
        return LocaleType.en;
    }
  }
}
