import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/presentation/widgets/navbar.widget.dart';
import 'package:zunote/features/home/presentation/widgets/action_section_widget.dart';
import 'package:zunote/features/home/presentation/widgets/details_section_widget.dart';
import 'package:zunote/features/home/presentation/widgets/note_input_field_widget.dart';

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
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: 100.w,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            color: Color(AppStyle.instance.secondaryColor),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: AppStyle.instance.boxShadow,
                          ),
                          child: const Text("JUST ADDED"),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Column(
                  children: [
                    const DetailsSection(),
                    SizedBox(height: 2.h),
                    const NoteInputField(),
                    SizedBox(height: 2.h),
                    const ActionSection()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
