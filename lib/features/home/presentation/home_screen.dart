// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/widgets/bottom_navbar_widget.dart';
import 'package:zunote/core/presentation/widgets/navbar_widget.dart';
import 'package:zunote/features/home/presentation/state/home_state.dart';
import 'package:zunote/features/home/presentation/widgets/home_body_widget.dart';
import 'package:zunote/features/notes/presentation/notes_screen.dart';
import 'package:zunote/features/subscription/presentation/subscription_screen.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Widget> pageList = [
    SubscriptionScreen(),
    const HomeBody(),
    const NotesScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int navIndex = ref.watch(homePageProvider).navIndex ?? 1;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: const BottomNavBar(),
      appBar: const NavBar(),
      body: pageList.elementAt(navIndex),
    );
  }
}
