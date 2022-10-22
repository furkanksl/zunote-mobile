import 'package:flutter/material.dart';
import 'package:zunote/features/note_detail/presentation/widgets/voice_note_edit_card_widget.dart';

class VoiceNoteItemList extends StatelessWidget {
  const VoiceNoteItemList({
    Key? key,
    required this.isVoiceNote,
  }) : super(key: key);

  final bool isVoiceNote;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVoiceNote,
      maintainSize: false,
      child: Expanded(
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) => const VoiceNoteEditCard(),
        ),
      ),
    );
  }
}
