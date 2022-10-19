import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/widgets/widget_shadower_widget.dart';

class AuthOptions extends StatelessWidget {
  const AuthOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(1000),
          child: SizedBox(
            height: 60,
            width: 60,
            child: Center(
              child: WidgetShadower(
                child: SvgPicture.asset(AppStyle.instance.playStoreIconPath),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(1000),
          child: SizedBox(
            height: 60,
            width: 60,
            child: Center(
              child: WidgetShadower(
                child: SvgPicture.asset(AppStyle.instance.appStpreIconPath),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
