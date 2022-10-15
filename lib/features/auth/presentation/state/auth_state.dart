// ignore_for_file: prefer_final_fields
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authPageProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) => AuthProvider());

class AuthProvider extends StateNotifier<AuthState> {
  AuthProvider() : super(AuthState(toggleIndex: 0));

  void setToggleIndex(int idx) => state = state.copyWith(toggleIndex: idx);
  void setEmail(String emailAddress) => state.email = emailAddress;
  void setPassword(String pass) => state.password = pass;
  void setPasswordAgain(String passAgain) => state.passwordAgain = passAgain;

  Future<bool> login() async => false;
  Future<bool> signup() async => false;
}

class AuthState {
  int? toggleIndex = 0;
  String? email = "";
  String? password = "";
  String? passwordAgain = "";

  AuthState({
    this.toggleIndex,
    this.email,
    this.password,
    this.passwordAgain,
  });

  AuthState copyWith({
    int? toggleIndex,
    String? email,
    String? password,
    String? passwordAgain,
  }) {
    return AuthState(
      toggleIndex: toggleIndex ?? this.toggleIndex,
      email: email ?? this.email,
      password: password ?? this.password,
      passwordAgain: passwordAgain ?? this.passwordAgain,
    );
  }
}
