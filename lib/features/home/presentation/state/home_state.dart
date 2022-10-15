// ignore_for_file: prefer_final_fields
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homePageProvider = StateNotifierProvider<HomeProvider, HomeState>((ref) => HomeProvider());

class HomeProvider extends StateNotifier<HomeState> {
  HomeProvider() : super(HomeState(toggleMenu: false));

  void setToggle(bool? value) => state = state.copyWith(toggleMenu: value);
  void setEmail(String emailAddress) => state.email = emailAddress;
  void setPassword(String pass) => state.password = pass;
  void setPasswordAgain(String passAgain) => state.passwordAgain = passAgain;

  Future<bool> login() async => false;
  Future<bool> signup() async => false;
}

class HomeState {
  bool? toggleMenu = false;
  String? email = "";
  String? password = "";
  String? passwordAgain = "";

  HomeState({
    this.toggleMenu,
    this.email,
    this.password,
    this.passwordAgain,
  });

  HomeState copyWith({
    bool? toggleMenu,
    String? email,
    String? password,
    String? passwordAgain,
  }) {
    return HomeState(
      toggleMenu: toggleMenu ?? this.toggleMenu,
      email: email ?? this.email,
      password: password ?? this.password,
      passwordAgain: passwordAgain ?? this.passwordAgain,
    );
  }
}
