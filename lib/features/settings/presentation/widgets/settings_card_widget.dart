import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    Key? key,
    required this.cardName,
    required this.child,
  }) : super(key: key);

  final String cardName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(AppStyle.instance.secondaryColor),
        borderRadius: BorderRadius.circular(10),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cardName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Divider(
            height: 10,
            thickness: 1,
            color: Color(AppStyle.instance.primaryDarkColor),
          ),
          child,
        ],
      ),
    );
  }
}
