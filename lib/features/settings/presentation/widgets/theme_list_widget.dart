// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zunote/core/data/service/app_local_service.dart';

import 'package:zunote/core/theme/state/theme_provider.dart';
import 'package:zunote/features/settings/domain/entity/theme_entity.dart';
import 'package:zunote/features/settings/presentation/widgets/theme_box_widget.dart';

class ThemeList extends ConsumerWidget {
  ThemeList({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<ThemeEntity> list;
  final appLocalService = AppLocalService();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeIndex = ref.watch(themeProvider).themeIndex;

    selectTheme(int index) {
      ref.read(themeProvider.notifier).setThemeIndex(index);
      appLocalService.saveThemeIndex(index);
    }

    return SizedBox(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) => ThemeBox(
          model: ThemeEntity(
            color1: list[index].color1,
            color2: list[index].color2,
            isSelected: themeIndex == index,
            onClick: () => selectTheme(index),
          ),
        ),
      ),
    );
  }
}
