import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/features/home/presentation/widgets/action_section_widget.dart';
import 'package:zunote/features/home/presentation/widgets/details_section_widget.dart';
import 'package:zunote/features/home/presentation/widgets/just_added_section_widget.dart';
import 'package:zunote/features/home/presentation/widgets/note_input_field_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const JustAddedSection(),
              DetailsSection(),
              SizedBox(height: 1.5.h),
              const NoteInputField(),
              SizedBox(height: 1.5.h),
              const ActionSection()
            ],
          ),
        ),
      ),
    );
  }
}
