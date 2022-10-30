import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/data/service/utility_service.dart';
import 'package:zunote/features/auth/presentation/auth_screen.dart';
import 'package:zunote/features/auth/presentation/state/auth_provider.dart';
import 'package:zunote/features/home/presentation/home_screen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  final UtilityService utilityService = UtilityService();

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);

    Future.delayed(const Duration(milliseconds: 1050), () {
      authState.whenData(
        (value) => value != null
            ? utilityService.navigateTo(context, HomeScreen())
            : utilityService.navigateTo(context, const AuthScreen()),
      );
    });
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 700),
              curve: Curves.bounceOut,
              tween: Tween(begin: 0.5, end: 0.08),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(value * -500, 100),
                child: child,
              ),
              child: SizedBox(
                height: 50,
                child: SimpleShadow(
                  child: SvgPicture.asset(AppStyle.instance.zuWordIconPath),
                ),
              ),
            ),
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 700),
              curve: Curves.bounceOut,
              tween: Tween(begin: 1, end: 0.11),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(value * 500, 50),
                child: child,
              ),
              child: SizedBox(
                height: 50,
                child: SimpleShadow(
                  child: SvgPicture.asset(AppStyle.instance.noteWordIconPath),
                ),
              ),
            ),
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.bounceOut,
              tween: Tween(begin: 1.0, end: 0.045),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(0, value * -500),
                child: child,
              ),
              child: SizedBox(
                width: 50,
                child: SimpleShadow(
                  child: SvgPicture.asset(AppStyle.instance.thunderIconPath),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
