import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zunote/features/auth/presentation/state/auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState(toggleIndex: 0));

  void setToggleIndex(int idx) => state = state.copyWith(toggleIndex: idx);
  void setEmail(String emailAddress) => state.email = emailAddress;
  void setPassword(String pass) => state.password = pass;
  void setPasswordAgain(String passAgain) => state.passwordAgain = passAgain;

  Future<bool> login() async => false;
  Future<bool> signup() async => false;
}
