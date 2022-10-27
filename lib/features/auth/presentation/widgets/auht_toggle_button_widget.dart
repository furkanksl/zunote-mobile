import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/features/auth/presentation/state/auth_provider.dart';

class AuthToggleButton extends ConsumerWidget {
  const AuthToggleButton({
    Key? key,
    required this.index,
    required this.buttonName,
  }) : super(key: key);

  final int index;
  final String buttonName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleIndex = ref.watch(authPageProvider).toggleIndex;
    void setToggle(int idx) => ref.read(authPageProvider.notifier).setToggleIndex(idx);

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => setToggle(index),
          child: Container(
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: toggleIndex == index ? const Color(0xFFA0A0A0) : Colors.transparent,
            ),
            child: Center(
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: 16,
                  color: toggleIndex == index ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
