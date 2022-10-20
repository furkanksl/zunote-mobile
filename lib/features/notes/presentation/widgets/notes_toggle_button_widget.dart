import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/widgets/widget_shadower_widget.dart';
import 'package:zunote/features/auth/presentation/state/auth_state.dart';

class NotesToggleButton extends ConsumerWidget {
  const NotesToggleButton({
    Key? key,
    required this.index,
    required this.svgPath,
    required this.svgPathActive,
  }) : super(key: key);

  final int index;
  final String svgPath;
  final String svgPathActive;

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
              color: toggleIndex == index ? Color(AppStyle.instance.secondaryColor) : Colors.transparent,
            ),
            child: Center(
              child: WidgetShadower(
                child: SvgPicture.asset(toggleIndex == index ? svgPathActive : svgPath),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
