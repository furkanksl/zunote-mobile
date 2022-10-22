import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';

Dialog deleteDialog(BuildContext context) => Dialog(
      elevation: 1,
      backgroundColor: Color(AppStyle.instance.secondaryColor),
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
                    color: Color(AppStyle.instance.grayColor),
                    boxShadow: AppStyle.instance.boxShadow,
                  ),
                  child: const Text(
                    "DELETE",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                const Text("Are you sure to proceed?"),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DialogButton(
                      color: AppStyle.instance.grayColor,
                      onClick: () {},
                      buttonName: "Cancel",
                    ),
                    DialogButton(
                      color: AppStyle.instance.primaryColor,
                      onClick: () {},
                      buttonName: "Confirm",
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
          style: TextStyle(
            color: Color(AppStyle.instance.grayishTextColor),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
