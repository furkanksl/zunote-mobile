// ignore_for_file: prefer_final_fields
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homePageProvider = StateNotifierProvider<HomeProvider, HomeState>((ref) => HomeProvider());

class HomeProvider extends StateNotifier<HomeState> {
  HomeProvider() : super(HomeState(toggleMenu: false, navIndex: 1));

  void setToggle(bool? value) => state = state.copyWith(toggleMenu: value);
  void setNavIndex(int index) => state = state.copyWith(navIndex: index);

  Future<bool> login() async => false;
  Future<bool> signup() async => false;
}

class HomeState {
  bool? toggleMenu = false;
  int? navIndex = 1;

  HomeState({
    this.toggleMenu,
    this.navIndex,
  });

  HomeState copyWith({
    bool? toggleMenu,
    int? navIndex,
  }) {
    return HomeState(
      toggleMenu: toggleMenu ?? this.toggleMenu,
      navIndex: navIndex ?? this.navIndex,
    );
  }
}
