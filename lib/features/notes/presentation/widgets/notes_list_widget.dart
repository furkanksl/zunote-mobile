import 'package:flutter/material.dart';
import 'package:zunote/features/notes/presentation/widgets/note_card_widget.dart';

class NotesList extends StatelessWidget {
  const NotesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const NoteCard();
        },
      ),
    );
  }
}
