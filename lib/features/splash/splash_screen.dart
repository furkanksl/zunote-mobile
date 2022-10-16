import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/home/presentation/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 1550),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (context) => HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppStyle.instance.primaryColor),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.bounceOut,
              tween: Tween(begin: 0.5, end: 0.08),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(value * -500, 100),
                child: child,
              ),
              child: SizedBox(
                height: 50,
                child: SvgPicture.asset(AppStyle.instance.zuWordIconPath),
              ),
            ),
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.bounceOut,
              tween: Tween(begin: 1, end: 0.11),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(value * 500, 50),
                child: child,
              ),
              child: SizedBox(
                height: 50,
                child: SvgPicture.asset(AppStyle.instance.noteWordIconPath),
              ),
            ),
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1500),
              curve: Curves.bounceOut,
              tween: Tween(begin: 1.0, end: 0.035),
              builder: (context, value, child) => Transform.translate(
                offset: Offset(0, value * -500),
                child: child,
              ),
              child: SizedBox(
                width: 50,
                child: SvgPicture.asset(AppStyle.instance.thunderIconPath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
