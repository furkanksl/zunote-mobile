// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/auth/presentation/state/auth_state.dart';
import 'package:zunote/features/auth/presentation/widgets/continue_button_widget.dart';
import 'package:zunote/features/auth/presentation/widgets/input_field_widget.dart';

class AuthForm extends ConsumerWidget {
  AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authPageProvider);
    final toggleIndex = authProvider.toggleIndex;
    // final toggleIndex = ref.watch(AuthProvider.instance.toggleIndex.state).state;

    return Container(
      width: 90.w,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InputField(
            controller: TextEditingController(text: authProvider.email),
            isObscureText: false,
            hintText: 'Email',
            iconPath: AppStyle.instance.emailIconPath,
            inputType: TextInputType.emailAddress,
            onChange: (String value) => ref.read(authPageProvider.notifier).setEmail(value),
          ),
          SizedBox(height: 3.h),
          InputField(
            key: const Key("#PasswordInput"),
            controller: TextEditingController(text: authProvider.password),
            isObscureText: true,
            hintText: 'Password',
            iconPath: AppStyle.instance.passwordIconPath,
            inputType: TextInputType.text,
            onChange: (String value) => ref.read(authPageProvider.notifier).setPassword(value),
          ),
          SizedBox(height: 3.h),
          Visibility(
            visible: toggleIndex == 1,
            child: InputField(
              controller: TextEditingController(text: authProvider.passwordAgain),
              isObscureText: true,
              hintText: 'Password again',
              iconPath: AppStyle.instance.passwordIconPath,
              inputType: TextInputType.text,
              onChange: (String value) => ref.read(authPageProvider.notifier).setPasswordAgain(value),
            ),
          ),
          Visibility(
            visible: toggleIndex == 0,
            child: SizedBox(height: 7.h),
          ),
          SizedBox(height: 4.h),
          const ContinueButton(),
        ],
      ),
    );
  }
}
