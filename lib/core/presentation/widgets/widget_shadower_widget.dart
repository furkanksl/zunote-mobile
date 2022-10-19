import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class WidgetShadower extends StatelessWidget {
  final Widget child;
  const WidgetShadower({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SimpleShadow(
        color: Colors.black26,
        offset: const Offset(0, 3),
        sigma: 2,
        child: child,
      );
}
