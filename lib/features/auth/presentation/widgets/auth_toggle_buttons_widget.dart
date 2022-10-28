import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/auth/presentation/widgets/auht_toggle_button_widget.dart';

class AuthToggleContainer extends ConsumerWidget {
  const AuthToggleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 80.w,
      height: 57,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFD9D9D9),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AuthToggleButton(
            index: 0,
            buttonName: "login".tr(),
          ),
          AuthToggleButton(
            index: 1,
            buttonName: "signup".tr(),
          ),
        ],
      ),
    );
  }
}
