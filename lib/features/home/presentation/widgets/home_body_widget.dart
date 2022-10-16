import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/features/home/presentation/widgets/action_section_widget.dart';
import 'package:zunote/features/home/presentation/widgets/details_section_widget.dart';
import 'package:zunote/features/home/presentation/widgets/just_added_section_widget.dart';
import 'package:zunote/features/home/presentation/widgets/note_input_field_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const JustAddedSection(),
          SizedBox(height: 2.h),
          Column(
            children: [
              const DetailsSection(),
              SizedBox(height: 2.h),
              const NoteInputField(),
              SizedBox(height: 2.h),
              const ActionSection()
            ],
          )
        ],
      ),
    );
  }
}
