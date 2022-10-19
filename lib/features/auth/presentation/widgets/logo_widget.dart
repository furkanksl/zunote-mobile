import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:sizer/sizer.dart';
import 'package:zunote/core/const/app_styles.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      constraints: const BoxConstraints(maxWidth: 500),
      child: SimpleShadow(
        child: SvgPicture.asset(AppStyle.instance.logoPath),
      ),
    );
  }
}
