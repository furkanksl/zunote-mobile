import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

SnackBar successSnackBar(String msg) {
  return SnackBar(
    backgroundColor: Colors.green,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    margin: EdgeInsets.only(
      bottom: 100.h - 150,
      right: 20,
      left: 20,
    ),
    duration: const Duration(seconds: 3),
    content: Row(
      children: [
        const Text(
          "🙌",
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            msg,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
  );
}
