import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:zunote/core/const/app_styles.dart';

class JustAddedSection extends StatelessWidget {
  const JustAddedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: AppStyle.instance.boxShadow,
            ),
            child: const Text("just-added").tr(),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 0,
              itemBuilder: (context, index) => Text("$index"),
            ),
          )
        ],
      ),
    );
  }
}
