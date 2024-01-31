import 'package:flutter/material.dart';

class MainInput extends StatelessWidget {
  String title;
  String? hint;
  Color backGroundColor;
  Color color;
  Color textColor;
  Color hintColor;
  Color iconColor;
  Color cursorColor;
  MainInput(
      {Key? key,
      required this.title,
      this.hint,
      this.backGroundColor = Colors.orange,
      this.color = Colors.blue,
      this.textColor = Colors.white,
      this.hintColor = Colors.white,
      this.iconColor = Colors.grey,
      this.cursorColor = Colors.orange})
      : super(key: key) {
    hint ??= title;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: textColor),
              ),
            )
          ],
        ),
        TextFormField(
            cursorColor: cursorColor,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_box_rounded,
                color: iconColor,
              ),
              border: const OutlineInputBorder(),
              hintStyle: TextStyle(color: hintColor),
              hintText: 'Enter $hint',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: backGroundColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: backGroundColor),
              ),
            )),
      ],
    );
  }
}
