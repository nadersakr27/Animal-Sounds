import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/units/land_box.dart';
import 'package:voices_of_animals/components/units/svg_box.dart';
import 'package:voices_of_animals/size_config.dart';

class SvgWithLandBox extends StatelessWidget {
  final double? boxHeight;
  final double? boxWidth;
  final double? svgWidth;
  final double? svgHeight;
  final double? landWidth;
  final double? landHeight;
  final double? svgBottomPadding;
  const SvgWithLandBox({
    super.key,
    required this.animalSvgPath,
    this.svgWidth,
    this.svgHeight,
    this.landWidth,
    this.landHeight,
    this.boxWidth,
    this.boxHeight,
    this.svgBottomPadding,
  });

  final String? animalSvgPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxWidth ?? getProportionateScreenWidth(110),
      height: boxHeight ?? getProportionateScreenHeight(110),
      child: Stack(
        children: [
          LandBox(
            width: landWidth ?? getProportionateScreenWidth(110),
            height: landHeight ?? getProportionateScreenHeight(56),
          ),
          SvgBox(
            animalSvgPath: animalSvgPath,
            width: svgWidth ?? getProportionateScreenWidth(110),
            height: svgHeight?? getProportionateScreenWidth(110),
            padding: svgBottomPadding,
          )
        ],
      ),
    );
  }
}
