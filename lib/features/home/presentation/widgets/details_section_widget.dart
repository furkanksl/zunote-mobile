// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:zunote/core/const/app_styles.dart';
import 'package:zunote/core/data/service/utility_service.dart';
import 'package:zunote/core/presentation/dialogs/category_dialog.dart';
import 'package:zunote/features/home/presentation/widgets/circle_button_widget.dart';

class DetailsSection extends StatelessWidget {
  DetailsSection({
    Key? key,
  }) : super(key: key);

  void showCategoryDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) => categoryDialog(context));
  }

  final UtilityService _utilityService = UtilityService();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleButton(
            size: const Size(40, 40),
            svgPath: AppStyle.instance.categoryIconPath,
            onClick: () => showCategoryDialog(context),
          ),
          CircleButton(
            size: const Size(40, 40),
            svgPath: AppStyle.instance.reminderIconPath,
            onClick: () {
              DatePicker.showDateTimePicker(
                context,
                locale: _utilityService.getCurrentLocaleType(context),
                showTitleActions: true,
                theme: DatePickerTheme(
                  backgroundColor: Theme.of(context).cardColor,
                  cancelStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                  doneStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                minTime: DateTime.now(),
                onChanged: (date) {
                  print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                },
                onConfirm: (date) {
                  print('confirm ${date}');
                },
                currentTime: DateTime.now(),
              );
            },
          ),
        ],
      ),
    );
  }
}
