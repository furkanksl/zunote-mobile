import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/features/notes/presentation/widgets/category_selector_widget.dart';
import 'package:zunote/features/notes/presentation/widgets/notes_list_widget.dart';
import 'package:zunote/features/notes/presentation/widgets/notes_toggle_container_widget.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 1.h),
            const NotesToggleContainer(),
            SizedBox(height: 2.h),
            const CategorySelector(),
            SizedBox(height: 2.h),
            NotesList(),
          ],
        ),
      ),
    );
  }
}
