import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/notes/presentation/widgets/notes_toggle_button_widget.dart';

class NotesToggleContainer extends ConsumerWidget {
  const NotesToggleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 80.w,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(AppStyle.instance.buttonColor),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NotesToggleButton(
            index: 0,
            svgPath: AppStyle.instance.voiceNoteIconPath,
            svgPathActive: AppStyle.instance.voiceNoteWhiteIconPath,
          ),
          NotesToggleButton(
            index: 1,
            svgPath: AppStyle.instance.textNoteIconPath,
            svgPathActive: AppStyle.instance.textNoteWhiteIconPath,
          ),
        ],
      ),
    );
  }
}
