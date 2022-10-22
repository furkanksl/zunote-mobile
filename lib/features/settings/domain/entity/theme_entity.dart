import 'package:flutter/material.dart';

class ThemeEntity {
  ThemeEntity({
    required this.color1,
    required this.color2,
    required this.isSelected,
    this.onClick,
  });

  final Color color1;
  final Color color2;
  bool isSelected;
  final Function? onClick;
}
