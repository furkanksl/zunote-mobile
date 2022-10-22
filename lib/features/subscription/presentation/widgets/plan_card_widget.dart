import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/subscription/presentation/widgets/list_item_widget.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    Key? key,
    required this.plans,
    required this.index,
  }) : super(key: key);

  final List plans;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: AppStyle.instance.boxShadow,
        color: Theme.of(context).cardColor,
      ),
      margin: const EdgeInsets.only(right: 20, bottom: 20, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SimpleShadow(
            child: SvgPicture.asset(plans[index]["icon"]),
          ),
          Text(
            plans[index]["name"],
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 2.h),
          SizedBox(
            width: 49.w,
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: plans[index]["items"].length,
              itemBuilder: (context, itemIndex) => ListItemWidget(
                item: plans[index]["items"][itemIndex],
                centered: false,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: AppStyle.instance.boxShadow,
              color: Theme.of(context).canvasColor,
            ),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                shadowColor: Colors.black12,
                backgroundColor: Colors.transparent,
                elevation: 0,
                foregroundColor: Colors.black12,
                side: const BorderSide(color: Colors.transparent),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "\$${plans[index]["price"]}/annual",
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  SvgPicture.asset(
                    AppStyle.instance.upgradeIconPath,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Upgrade to ${plans[index]["name"]}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
