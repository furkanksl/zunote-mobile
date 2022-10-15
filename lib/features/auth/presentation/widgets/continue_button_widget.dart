import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/auth/presentation/state/auth_state.dart';

class ContinueButton extends ConsumerWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      onPressed: () {
        print(ref.watch(authPageProvider).email);
      },
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(5),
        overlayColor: const MaterialStatePropertyAll(
          Colors.black12,
        ),
        backgroundColor: MaterialStatePropertyAll(
          Color(AppStyle.instance.secondaryColor),
        ),
        fixedSize: const MaterialStatePropertyAll(
          Size(140, 40),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      child: const Text(
        "Continue",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
