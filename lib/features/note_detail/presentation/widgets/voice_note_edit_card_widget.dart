import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zunote/core/const/app_styles.dart';

class VoiceNoteEditCard extends StatelessWidget {
  const VoiceNoteEditCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      margin: const EdgeInsets.only(bottom: 20, right: 5, left: 5),
      decoration: BoxDecoration(
        boxShadow: AppStyle.instance.boxShadow,
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "00:15",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
              SvgPicture.asset(AppStyle.instance.removeIconPath),
            ],
          ),
          const TextField(
            style: TextStyle(fontSize: 16),
            cursorColor: Colors.black,
            cursorHeight: 16,
            cursorRadius: Radius.circular(20),
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 5,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(20),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text("14 Aug 2022 13:34"),
        ],
      ),
    );
  }
}
