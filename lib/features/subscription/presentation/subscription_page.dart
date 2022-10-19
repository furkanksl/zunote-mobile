import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/subscription/presentation/widgets/current_plan_widget.dart';
import 'package:zunote/features/subscription/presentation/widgets/plans_section_widget.dart';

class SubscriptionPage extends StatelessWidget {
  SubscriptionPage({Key? key}) : super(key: key);

  final List<String> planItems = [
    "3 mins single recording time",
    "10 voice notes",
  ];

  final List<dynamic> plans = [
    {
      "name": "Standart",
      "price": 19,
      "annual": true,
      "items": ["10 mins single recording time", "100 voice notes"],
      "planPrice": 39,
      "planId": 1,
      "icon": AppStyle.instance.standartPlanIconPath,
    },
    {
      "name": "Premium",
      "price": 39,
      "annual": true,
      "items": ["30 mins single recording time", "Unlimited voice notes"],
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
