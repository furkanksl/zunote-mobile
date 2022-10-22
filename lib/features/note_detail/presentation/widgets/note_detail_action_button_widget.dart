import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';

class NoteDetailActionButton extends StatelessWidget {
  const NoteDetailActionButton({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(AppStyle.instance.grayColor),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 12),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black12,
          side: const BorderSide(color: Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: child,
      ),
    );
  }
}
