import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'settings-title',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ).tr(),
        centerTitle: true,
        elevation: 0,
      ),
      body: SettingsBody(),
    );
  }
}
