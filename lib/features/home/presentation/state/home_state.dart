// ignore_for_file: prefer_final_fields
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homePageProvider = StateNotifierProvider<HomeProvider, HomeState>(
  (ref) => HomeProvider(
    HomeState(
      toggleMenu: false,
      navIndex: 1,
    ),
  ),
);

class HomeProvider extends StateNotifier<HomeState> {
  HomeProvider(HomeState state) : super(state);

  void setToggle(bool value) => state = state.copyWith(toggleMenu: value);
  void setNavIndex(int index) => state = state.copyWith(navIndex: index);
}

class HomeState {
  bool? toggleMenu;
  int? navIndex;

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
