// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:zunote/features/settings/domain/entity/theme_entity.dart';
import 'package:zunote/features/settings/presentation/widgets/theme_box_widget.dart';

class ThemeList extends StatefulWidget {
  const ThemeList({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<ThemeEntity> list;

  @override
  State<ThemeList> createState() => _ThemeListState();
}

class _ThemeListState extends State<ThemeList> {
  selectTheme(int index) {
    setState(() {
      widget.list.forEach((element) => element.isSelected = false);
      widget.list[index].isSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
        itemBuilder: (context, index) => ThemeBox(
          model: ThemeEntity(
            color1: widget.list[index].color1,
            color2: widget.list[index].color2,
            isSelected: widget.list[index].isSelected,
            onClick: () => selectTheme(index),
          ),
        ),
      ),
    );
  }
}
