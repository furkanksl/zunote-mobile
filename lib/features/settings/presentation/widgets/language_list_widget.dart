// ignore_for_file: avoid_function_literals_in_foreach_calls
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:zunote/features/settings/domain/entity/language_entity.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<LanguageEntity> list;

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 2,
              color: context.locale.languageCode == widget.list[index].symbol ? Colors.white : Colors.transparent,
            ),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            highlightColor: Colors.red,
            onTap: () async => await context.setLocale(context.supportedLocales[index]),
            child: Material(
              borderRadius: BorderRadius.circular(100),
              color: Colors.transparent,
              child: SvgPicture.asset(widget.list[index].iconPath),
            ),
          ),
        ),
      ),
    );
  }
}
