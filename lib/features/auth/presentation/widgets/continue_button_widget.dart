import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/home/presentation/home_screen.dart';

class ContinueButton extends ConsumerWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      onPressed: () async => Navigator.push(
        context,
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (context) => HomeScreen(),
        ),
      ),
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(5),
        overlayColor: const MaterialStatePropertyAll(
          Colors.black12,
        ),
        backgroundColor: MaterialStatePropertyAll(
          Theme.of(context).cardColor,
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
