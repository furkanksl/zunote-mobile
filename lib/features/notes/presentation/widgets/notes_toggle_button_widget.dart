import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/presentation/widgets/widget_shadower_widget.dart';
import 'package:zunote/features/notes/presentation/state/notes_provider.dart';

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
    final toggleIndex = ref.watch(notesPageProvider).toggleIndex;
    void setToggle(int idx) => ref.read(notesPageProvider.notifier).setToggleIndex(idx);

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => setToggle(index),
          child: Container(
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: toggleIndex == index ? Theme.of(context).cardColor : Colors.transparent,
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
