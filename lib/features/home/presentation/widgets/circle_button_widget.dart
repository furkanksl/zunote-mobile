import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:zunote/core/presentation/widgets/widget_shadower_widget.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
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
        borderRadius: BorderRadius.circular(50),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: Colors.black.withOpacity(0.1),
          side: const BorderSide(
            color: Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
        onPressed: () => onClick(),
        child: WidgetShadower(
          child: SvgPicture.asset(
            svgPath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
