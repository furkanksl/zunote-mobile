import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/features/subscription/presentation/widgets/plan_card_widget.dart';

class PlansSection extends StatelessWidget {
  const PlansSection({
    Key? key,
    required this.plans,
  }) : super(key: key);

  final List plans;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 200,
        maxHeight: 380,
        maxWidth: 100.w,
        minWidth: 90.w,
      ),
      child: ListView.builder(
        itemCount: plans.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => PlanCard(plans: plans, index: index),
      ),
    );
  }
}
