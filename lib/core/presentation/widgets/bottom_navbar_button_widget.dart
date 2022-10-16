import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarButton extends StatelessWidget {
  const BottomNavBarButton({
    required this.iconPath,
    required this.onClick,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  final Function onClick;
  final bool isSelected;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: SvgPicture.asset(isSelected ? "${iconPath.substring(0, iconPath.length - 4)}_gray.svg" : iconPath),
    );
  }
}
