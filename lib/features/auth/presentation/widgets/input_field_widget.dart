import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zunote/core/const/app_styles.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isObscureText;
  final String iconPath;
  final TextInputType inputType;
  final Function onChange;

  const InputField({
    required this.controller,
    required this.hintText,
    required this.isObscureText,
    required this.iconPath,
    required this.inputType,
    required this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.selection = TextSelection.collapsed(offset: controller.text.length);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      constraints: const BoxConstraints(maxWidth: 350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFD9D9D9),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: TextField(
        onChanged: (value) => onChange(value),
        controller: controller,
        style: const TextStyle(fontSize: 16),
        cursorColor: Colors.black,
        cursorHeight: 16,
        cursorRadius: const Radius.circular(20),
        keyboardType: inputType,
        maxLines: 1,
        obscureText: isObscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w200,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(iconPath),
          ),
        ),
      ),
    );
  }
}
