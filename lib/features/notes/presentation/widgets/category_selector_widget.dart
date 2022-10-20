import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      constraints: const BoxConstraints(
        minWidth: 151,
        minHeight: 50,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(AppStyle.instance.secondaryColor),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            SvgPicture.asset(AppStyle.instance.categoryBlackIconPath),
            const SizedBox(width: 20),
            const Flexible(
              child: Text(
                "All",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
