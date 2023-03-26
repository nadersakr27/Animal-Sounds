import 'package:flutter/material.dart';
import 'package:voices_of_animals/colors.dart';
import 'package:voices_of_animals/size_config.dart';

class SmallText extends StatelessWidget {
  final String text;
  const SmallText({required this.text, super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColor.primaryColor,
        letterSpacing: 1.5,
        fontSize:  getProportionateScreenHeight(14),
      ),
    );
  }
}
