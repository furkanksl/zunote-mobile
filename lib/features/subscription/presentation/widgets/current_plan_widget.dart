import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/features/subscription/presentation/widgets/list_item_widget.dart';

class CurrentPlan extends StatelessWidget {
  const CurrentPlan({
    Key? key,
    required this.planItems,
  }) : super(key: key);

  final List<String> planItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "you-currently-have",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ).tr(),
        SizedBox(height: 1.5.h),
        ListView.builder(
          itemCount: planItems.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => ListItemWidget(
            item: planItems[index],
            centered: true,
          ),
        )
      ],
    );
  }
}
