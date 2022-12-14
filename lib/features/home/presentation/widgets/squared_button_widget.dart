import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zunote/core/const/app_styles.dart';

class SquaredButton extends StatelessWidget {
  const SquaredButton({
    required this.size,
    required this.svgPath,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  final Size size;
  final String svgPath;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFD9D9D9),
        boxShadow: AppStyle.instance.boxShadow,
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: Colors.black.withOpacity(0.1),
          side: const BorderSide(
            color: Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
        onPressed: () => onClick(),
        child: SvgPicture.asset(
          svgPath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
