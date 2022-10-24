import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class NotificationSection extends StatefulWidget {
  const NotificationSection({Key? key}) : super(key: key);

  @override
  State<NotificationSection> createState() => _NotificationSectionState();
}

class _NotificationSectionState extends State<NotificationSection> {
  bool notificationToggle = true;

  toggleNotification(val) => setState(() => notificationToggle = val);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: const Text(
            "notification-msg",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ).tr(),
        ),
        CupertinoSwitch(
          value: notificationToggle,
          onChanged: (value) => toggleNotification(value),
        )
      ],
    );
  }
}
