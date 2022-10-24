import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/note_detail/presentation/widgets/note_detail_action_button_widget.dart';

class NoteDetailActionsContainer extends StatelessWidget {
  const NoteDetailActionsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NoteDetailActionButton(
            child: Text(
              "edit".tr(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          NoteDetailActionButton(
            child: SvgPicture.asset(AppStyle.instance.trashIconPath),
          )
        ],
      ),
    );
  }
}
