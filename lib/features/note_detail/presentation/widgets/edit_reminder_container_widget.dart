import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zunote/core/const/app_styles.dart';

class EditReminderContainer extends StatelessWidget {
  const EditReminderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppStyle.instance.reminderIconPath),
        const SizedBox(width: 15),
        const Expanded(
          child: Text(
            "12 Aug 2022 10:34",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SvgPicture.asset(AppStyle.instance.removeIconPath),
        const SizedBox(width: 15),
      ],
    );
  }
}
