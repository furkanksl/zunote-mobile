import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/widgets/widget_shadower_widget.dart';

class BottomNavBarButton extends StatelessWidget {
  const BottomNavBarButton({
    required this.iconPath,
    required this.onClick,
    required this.isSelected,
    required this.angle,
    required this.margin,
    Key? key,
  }) : super(key: key);

  final Function onClick;
  final bool isSelected;
  final String iconPath;
  final double angle;
  final double margin;

  @override
  Widget build(BuildContext context) {
    Color isSelectedBox(bool isSelected) {
      return isSelected ? Theme.of(context).scaffoldBackgroundColor : const Color(0xFFD9D9D9);
    }

    return GestureDetector(
      onTap: () => onClick(),
      child: Transform.rotate(
        angle: angle,
        child: Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.only(bottom: margin),
          decoration: BoxDecoration(
            color: isSelectedBox(isSelected),
            borderRadius: BorderRadius.circular(20),
            boxShadow: AppStyle.instance.boxShadow,
          ),
          child: Center(
            child: WidgetShadower(
              child: SvgPicture.asset(isSelected ? "${iconPath.substring(0, iconPath.length - 4)}_gray.svg" : iconPath),
            ),
          ),
        ),
      ),
    );
  }
}
