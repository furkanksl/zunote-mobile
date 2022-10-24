import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/subscription/presentation/widgets/current_plan_widget.dart';
import 'package:zunote/features/subscription/presentation/widgets/plans_section_widget.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({Key? key}) : super(key: key);

  final List<String> planItems = [
    "free-plan-item-1",
    "free-plan-item-2",
  ];

  final List<dynamic> plans = [
    {
      "name": "Standart",
      "price": 19,
      "annual": true,
      "items": ["standart-plan-item-1", "standart-plan-item-2"],
      "planPrice": 39,
      "planId": 1,
      "icon": AppStyle.instance.standartPlanIconPath,
    },
    {
      "name": "Premium",
      "price": 39,
      "annual": true,
      "items": ["premium-plan-item-1", "premium-plan-item-2"],
      "planPrice": 39,
      "planId": 2,
      "icon": AppStyle.instance.premiumPlanIconPath,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 100.w,
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 1.5.h),
            CurrentPlan(planItems: planItems),
            SizedBox(height: 3.h),
            PlansSection(plans: plans)
          ],
        ),
      ),
    );
  }
}
