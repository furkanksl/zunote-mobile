import 'package:flutter/material.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/widgets/navbar.widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppStyle.instance.primaryColor),
      appBar: NavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
