import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/constances.dart';

class MidText extends StatelessWidget {
  final String text;
  final Color? fontColor;
  const MidText({required this.text, super.key, this.fontColor});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: fontColor ?? App.secondaryColor,
        letterSpacing: 1.2,
        fontSize: 24,
      ),
    );
  }
}
