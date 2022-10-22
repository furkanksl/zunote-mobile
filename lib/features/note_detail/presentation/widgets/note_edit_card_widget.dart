import 'package:flutter/material.dart';
import 'package:zunote/core/const/app_styles.dart';

class NoteEditCard extends StatelessWidget {
  const NoteEditCard({
    Key? key,
    required this.isVoiceNote,
  }) : super(key: key);

  final bool isVoiceNote;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !isVoiceNote,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 12),
        decoration: BoxDecoration(
          boxShadow: AppStyle.instance.boxShadow,
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TextField(
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
            SizedBox(height: 10),
            Text("14 Aug 2022 13:34"),
          ],
        ),
      ),
    );
  }
}
