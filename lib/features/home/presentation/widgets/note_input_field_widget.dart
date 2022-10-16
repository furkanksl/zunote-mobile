import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';

class NoteInputField extends StatelessWidget {
  const NoteInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFD0D0D0),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: const TextField(
        style: TextStyle(fontSize: 16),
        cursorColor: Colors.black,
        cursorHeight: 16,
        cursorRadius: Radius.circular(20),
        keyboardType: TextInputType.text,
        maxLines: 5,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20),
          hintText: "Type something...",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
