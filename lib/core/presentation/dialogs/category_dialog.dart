import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/dialogs/add_category_dialog.dart';
import 'package:zunote/core/presentation/dialogs/delete_dialog.dart';

void showAddCategoryDialog(BuildContext context) {
  showDialog(context: context, builder: (BuildContext context) => addCategoryDialog(context));
}

void showDeleteDialog(BuildContext context) {
  showDialog(context: context, builder: (BuildContext context) => deleteDialog(context));
}

Dialog categoryDialog(BuildContext context) => Dialog(
      elevation: 0,

      backgroundColor: Color(AppStyle.instance.secondaryColor),
      insetPadding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ), //this right here
      child: SizedBox(
        width: 100.w,
        child: Container(
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(maxWidth: 600, maxHeight: 400),
          width: 60.w,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            // boxShadow: AppStyle.instance.boxShadow,
          ),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 280),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(AppStyle.instance.grayColor),
                    boxShadow: AppStyle.instance.boxShadow,
                  ),
                  child: const Text(
                    "CATEGORIES",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  height: 50,
                  constraints: const BoxConstraints(maxWidth: 280),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(AppStyle.instance.primaryColor),
                    boxShadow: AppStyle.instance.boxShadow,
                  ),
                  child: OutlinedButton(
                    onPressed: () => showAddCategoryDialog(context),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      foregroundColor: Colors.black12,
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppStyle.instance.grayAddIconPath),
                        const Text(
                          "ADD",
                          style: TextStyle(
                            color: Color(0xFF747474),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 25),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 2.h),
                        constraints: const BoxConstraints(maxWidth: 280),
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(AppStyle.instance.primaryColor),
                          boxShadow: AppStyle.instance.boxShadow,
                        ),
                        child: OutlinedButton(
                          onPressed: () => Navigator.pop(context),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.black12,
                            side: const BorderSide(color: Colors.transparent),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "CATEGORY $index",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => showDeleteDialog(context),
                                child: SvgPicture.asset(AppStyle.instance.removeIconPath),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
