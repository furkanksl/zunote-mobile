import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/auth/presentation/widgets/auth_form_widget.dart';
import 'package:zunote/features/auth/presentation/widgets/auth_options_widget.dart';
import 'package:zunote/features/auth/presentation/widgets/logo_widget.dart';
import 'package:zunote/features/auth/presentation/widgets/auth_toggle_buttons_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppStyle.instance.primaryColor),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Logo(),
              const AuthToggleContainer(),
              SizedBox(height: 8.h),
              const AuthForm(),
              SizedBox(height: 3.h),
              const Text("Or"),
              SizedBox(height: 3.h),
              const AuthOptions()
            ],
          ),
        ),
      ),
    );
  }
}
