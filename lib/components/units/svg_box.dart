import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voices_of_animals/size_config.dart';

class SvgBox extends StatelessWidget {
  final double? width;
  final double? height;
  final double? padding;
  const SvgBox({
    super.key,
    required this.animalSvgPath,
    this.width,
    this.height,
    this.padding,
  });

  final String? animalSvgPath;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: padding ?? 0),
        width: width ??  getProportionateScreenHeight(110),
        height: height ??  getProportionateScreenHeight(10),
        child: SvgPicture.asset('assets/svg/${animalSvgPath!}'),
      ),
    );
  }

  factory SvgBox.details(String svg){
    return  SvgBox(
                  padding:  getProportionateScreenWidth(20),
                  animalSvgPath: svg,
                  width:  getProportionateScreenWidth(220),
                  height: getProportionateScreenHeight(220),
                );
  }
}
