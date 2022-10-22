import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zunote/core/const/app_styles.dart';

class EditCategoryContainer extends StatelessWidget {
  const EditCategoryContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppStyle.instance.categoryIconPath),
        const SizedBox(width: 15),
        const Expanded(
          child: Text(
            "CATEGORY",
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
