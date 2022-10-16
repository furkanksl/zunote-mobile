import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';

Dialog addCategoryDialog(BuildContext context) => Dialog(
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
          constraints: const BoxConstraints(maxWidth: 600, maxHeight: 330),
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
                    "ADD CATEGORY",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(AppStyle.instance.grayColor),
                    boxShadow: AppStyle.instance.boxShadow,
                  ),
                  child: const TextField(
                    style: TextStyle(fontSize: 16),
                    cursorColor: Colors.black,
                    cursorHeight: 16,
                    cursorRadius: Radius.circular(20),
                    keyboardType: TextInputType.text,
                    maxLines: 2,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                      hintText: "Type something...",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  height: 50,
                  constraints: const BoxConstraints(maxWidth: 280, minWidth: 214),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(AppStyle.instance.primaryColor),
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
                    child: const Text(
                      "ADD",
                      style: TextStyle(
                        color: Color(0xFF747474),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
              ],
            ),
          ),
        ),
      ),
    );