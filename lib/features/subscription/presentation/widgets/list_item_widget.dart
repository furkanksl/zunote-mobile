import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({required this.item, required this.centered, Key? key}) : super(key: key);

  final String item;
  final bool centered;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Visibility(
            visible: centered,
            child: SizedBox(width: 10.h),
          ),
          Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
