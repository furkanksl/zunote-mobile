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
        const Expanded(
          child: Text(
            "Keep it active if you don't want to miss your note reminders!",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CupertinoSwitch(
          value: notificationToggle,
          onChanged: (value) => toggleNotification(value),
        )
      ],
    );
  }
}
