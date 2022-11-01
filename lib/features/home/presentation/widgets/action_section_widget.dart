import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/home/presentation/widgets/squared_button_widget.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SquaredButton(
            size: const Size(65, 65),
            svgPath: AppStyle.instance.microphoneIconPath,
            onClick: () {},
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.transparent,
              height: 65,
            ),
          ),
          SquaredButton(
            size: const Size(65, 65),
            svgPath: AppStyle.instance.addIconPath,
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
