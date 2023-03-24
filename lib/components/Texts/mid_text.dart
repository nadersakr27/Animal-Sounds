import 'package:flutter/material.dart';
import 'package:voices_of_animals/colors.dart';

class MidText extends StatelessWidget {
  final String text;
  final Color? fontColor;
  final FontWeight? fontWeight;
  const MidText(
      {required this.text, super.key, this.fontColor, this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: fontWeight,
        color: fontColor ?? AppColor.secondaryColor,
        letterSpacing: 1.7,
        fontSize: 24,
      ),
    );
  }
}
