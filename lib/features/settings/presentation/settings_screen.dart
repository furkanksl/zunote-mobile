import 'package:flutter/material.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/features/settings/presentation/widgets/settings_body.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppStyle.instance.primaryColor),
      appBar: AppBar(
        backgroundColor: Color(AppStyle.instance.primaryColor),
        title: const Text(
          'SETTINGS',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SettingsBody(),
    );
  }
}
