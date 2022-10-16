import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/dialogs/category_dialog.dart';
import 'package:zunote/features/home/presentation/widgets/circle_button_widget.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    Key? key,
  }) : super(key: key);

  void showCategoryDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) => categoryDialog(context));
  }

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
            onClick: () => showCategoryDialog(context),
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
