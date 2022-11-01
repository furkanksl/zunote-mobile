// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

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

    return ScaffoldGradientBackground(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [
          0.48,
          0.99,
        ],
        colors: [
          Theme.of(context).scaffoldBackgroundColor,
          Colors.white.withOpacity(0.75),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
      appBar: const NavBar(),
      body: pageList.elementAt(navIndex),
    );
  }
}
