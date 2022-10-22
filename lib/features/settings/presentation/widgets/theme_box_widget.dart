import 'package:flutter/material.dart';
import 'package:zunote/features/settings/domain/entity/theme_entity.dart';
import 'package:zunote/features/settings/presentation/widgets/draw_triangle_widget.dart';

class ThemeBox extends StatelessWidget {
  const ThemeBox({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ThemeEntity model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: model.isSelected ? Colors.white : Colors.transparent,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(80),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 50,
          height: 50,
          child: Stack(
            children: [
              CustomPaint(
                size: const Size(50, 50),
                painter: DrawTriangle(
                  isReverse: false,
                  color: model.color1,
                ),
              ),
              CustomPaint(
                size: const Size(50, 50),
                painter: DrawTriangle(
                  isReverse: true,
                  color: model.color2,
                ),
              ),
              OutlinedButton(
                onPressed: () => model.onClick!(),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black26,
                ),
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
