import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/note_detail/presentation/widgets/edit_category_container_widget.dart';
import 'package:zunote/features/note_detail/presentation/widgets/edit_reminder_container_widget.dart';
import 'package:zunote/features/note_detail/presentation/widgets/note_detail_action_container_widget.dart';
import 'package:zunote/features/note_detail/presentation/widgets/note_edit_card_widget.dart';
import 'package:zunote/features/note_detail/presentation/widgets/voice_note_item_list_widget.dart';
import 'package:zunote/features/note_detail/presentation/widgets/voice_note_player_widget.dart';

class NoteDetailBody extends StatelessWidget {
  const NoteDetailBody({
    Key? key,
    required this.isVoiceNote,
  }) : super(key: key);

  final bool isVoiceNote;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: SafeArea(
        child: Center(
          child: Container(
            color: Colors.transparent,
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                SvgPicture.asset(
                  isVoiceNote ? AppStyle.instance.voiceNoteWhiteIconPath : AppStyle.instance.textNoteWhiteIconPath,
                  height: 40,
                ),
                SizedBox(height: 3.h),
                const EditCategoryContainer(),
                SizedBox(height: 2.h),
                const EditReminderContainer(),
                SizedBox(height: 2.h),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VoiceNoteItemList(isVoiceNote: isVoiceNote),
                      NoteEditCard(isVoiceNote: isVoiceNote),
                      VoiceNotePlayer(isVoiceNote: isVoiceNote),
                      const NoteDetailActionsContainer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
