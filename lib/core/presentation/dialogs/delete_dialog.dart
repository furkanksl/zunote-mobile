import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';

Dialog deleteDialog(BuildContext context) => Dialog(
      elevation: 1,
      backgroundColor: Theme.of(context).cardColor,
      insetPadding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ), //this right here
      child: SizedBox(
        width: 100.w,
        child: Container(
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(maxWidth: 600, maxHeight: 200),
          width: 60.w,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 280),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1.h),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).indicatorColor,
                    boxShadow: AppStyle.instance.boxShadow,
                  ),
                  child: Text(
                    "delete".tr(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Text("delete-msg".tr()),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DialogButton(
                      color: Theme.of(context).indicatorColor.value,
                      onClick: () {},
                      buttonName: "cancel".tr(),
                    ),
                    DialogButton(
                      color: Theme.of(context).scaffoldBackgroundColor.value,
                      onClick: () {},
                      buttonName: "confirm".tr(),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
              ],
            ),
          ),
        ),
      ),
    );

class DialogButton extends StatelessWidget {
  const DialogButton({
    required this.color,
    required this.onClick,
    required this.buttonName,
    Key? key,
  }) : super(key: key);

  final int color;
  final Function onClick;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      constraints: const BoxConstraints(maxWidth: 280, minWidth: 150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(color),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: OutlinedButton(
        onPressed: () => Navigator.pop(context),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black12,
          side: const BorderSide(color: Colors.transparent),
        ),
        child: Text(
          buttonName,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
