import 'package:flutter/material.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/note_detail/presentation/widgets/note_detail_body_widget.dart';

class NoteDetailScreen extends StatelessWidget {
  const NoteDetailScreen({Key? key}) : super(key: key);

  final isVoiceNote = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: NoteDetailBody(isVoiceNote: isVoiceNote),
    );
  }
}
