import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';

class VoiceNotePlayer extends StatelessWidget {
  const VoiceNotePlayer({
    Key? key,
    required this.isVoiceNote,
  }) : super(key: key);

  final bool isVoiceNote;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVoiceNote && MediaQuery.of(context).viewInsets.bottom <= 0,
      maintainSize: false,
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(AppStyle.instance.grayColor),
        ),
      ),
    );
  }
}
