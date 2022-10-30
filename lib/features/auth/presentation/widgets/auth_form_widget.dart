// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/auth/presentation/state/auth_provider.dart';
import 'package:zunote/features/auth/presentation/widgets/continue_button_widget.dart';
import 'package:zunote/features/auth/presentation/widgets/input_field_widget.dart';

class AuthForm extends ConsumerWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authPageProvider);
    final toggleIndex = authProvider.toggleIndex;

    return Container(
      width: 90.w,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InputField(
            controller: TextEditingController(text: authProvider.email),
            isObscureText: false,
            hintText: 'email'.tr(),
            iconPath: AppStyle.instance.emailIconPath,
            inputType: TextInputType.emailAddress,
            onChange: (String value) => ref.read(authPageProvider.notifier).setEmail(value),
          ),
          SizedBox(height: 3.h),
          InputField(
            key: const Key("#PasswordInput"),
            controller: TextEditingController(text: authProvider.password),
            isObscureText: true,
            hintText: 'password'.tr(),
            iconPath: AppStyle.instance.passwordIconPath,
            inputType: TextInputType.text,
            onChange: (String value) => ref.read(authPageProvider.notifier).setPassword(value),
          ),
          SizedBox(height: 3.h),
          Visibility(
            visible: toggleIndex == 1,
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,
            child: InputField(
              controller: TextEditingController(text: authProvider.passwordAgain),
              isObscureText: true,
              hintText: 'password-again'.tr(),
              iconPath: AppStyle.instance.passwordIconPath,
              inputType: TextInputType.text,
              onChange: (String value) => ref.read(authPageProvider.notifier).setPasswordAgain(value),
            ),
          ),
          SizedBox(height: 4.h),
          const ContinueButton(),
        ],
      ),
    );
  }
}
