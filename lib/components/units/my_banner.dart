import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voices_of_animals/components/Texts/large_text.dart';
import 'package:voices_of_animals/size_config.dart';

class MyBanner extends StatelessWidget {
  final String bgSvgPath;
  final String title;
  const MyBanner({super.key, required this.bgSvgPath, required this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(220),
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
            child: SvgPicture.asset(bgSvgPath, fit: BoxFit.cover),
          ),
          Positioned(top: getProportionateScreenHeight(20), left: getProportionateScreenWidth(20 ), child: LargeText(text: title))
        ],
      ),
    );
  }
}
