import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/home/presentation/widgets/circle_button_widget.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleButton(
            size: const Size(40, 40),
            svgPath: AppStyle.instance.categoryIconPath,
            onClick: () {},
          ),
          CircleButton(
            size: const Size(40, 40),
            svgPath: AppStyle.instance.reminderIconPath,
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
