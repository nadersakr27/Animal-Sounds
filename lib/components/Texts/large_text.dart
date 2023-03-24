import 'package:flutter/material.dart';
import 'package:voices_of_animals/colors.dart';

class LargeText extends StatelessWidget {
  final String text;
  final Color? fontColor;
  const LargeText({required this.text, super.key, this.fontColor});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: fontColor ?? AppColor.secondaryColor,
          letterSpacing: 3.5,
          fontSize: 30,
          height: 1.2),
    );
  }
}
