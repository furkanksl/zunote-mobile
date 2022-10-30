import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

SnackBar errorSnackBar(String msg) {
  return SnackBar(
    backgroundColor: Colors.transparent,
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    duration: const Duration(seconds: 3),
    content: SizedBox(
      height: 100.h - 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.6,
                color: Colors.white,
              ),
            ),
            child: Row(
              children: [
                const Text(
                  "😥",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    msg,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
