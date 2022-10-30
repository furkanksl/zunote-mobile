// ignore_for_file: unused_catch_clause, camel_case_types, constant_identifier_names

import 'package:dio/dio.dart';

import 'package:zunote/core/data/service/firebase_service.dart';
import 'package:zunote/core/data/service/utility_service.dart';
import 'package:zunote/core/enum/form_type_enum.dart';
import 'package:zunote/features/auth/data/models/form_checker_model.dart';

abstract class AuthService {
  FormCheckerModel checkForm({
    required FORM_TYPE formType,
    required String email,
    required String password,
    String? passwordAgain,
  });

  Future<bool> signInWithEmailAndPassword({required String email, required String password});

  Future<bool> signUpWithEmailAndPassword({required String email, required String password});

  Future<bool> signOut();
}

class AuthServiceImpl implements AuthService {
  final dio = Dio();
  final firebaseService = FirebaseService();

  @override
  Future<bool> signInWithEmailAndPassword({required String email, required String password}) async {
    return firebaseService.signInWithEmailAndPassword(email, password);
  }

  @override
  Future<bool> signUpWithEmailAndPassword({required String email, required String password}) {
    return firebaseService.signUpWithEmailAndPassword(email, password);
  }

  @override
  Future<bool> signOut() => firebaseService.signOut();

  @override
  FormCheckerModel checkForm({
    required FORM_TYPE formType,
    required String email,
    required String password,
    String? passwordAgain,
  }) {
    final utilityService = UtilityService();

    FormCheckerModel model = FormCheckerModel(message: '', isValidForm: false);

    final isEmailValid = utilityService.isValidEmail(email);
    final isPasswordValid = utilityService.hasValidLength(password);

    if (!isEmailValid) {
      model.message = "Please enter a valid email address!";
      return model;
    }
    if (!isPasswordValid) {
      model.message = "Password length should be more then 5 digits!";
      return model;
    }

    if (FORM_TYPE.LOGIN == formType) {
      model.isValidForm = true;
    } else if (FORM_TYPE.SIGNUP == formType) {
      final isPasswordsMatching = utilityService.hasMatch(password, passwordAgain!);
      if (!isPasswordsMatching) {
        model.message = "Passwords are not matching!";
      } else {
        model.isValidForm = true;
      }
    }

    return model;
  }
}
