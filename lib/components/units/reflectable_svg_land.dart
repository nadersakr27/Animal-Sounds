import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/units/svgbox_landbox.dart';

class ReflectableSvgAndLand extends StatelessWidget {
  final double? boxHeight;
  final double? boxWidth;
  final double? svgWidth;
  final double? svgHeight;
  final double? landWidth;
  final double? landHeight;
  final double? svgBottomPadding;
  final double? reflectWidth;

  final int? index;
  final String svg;
  const ReflectableSvgAndLand(
      {super.key,
      this.index,
      required this.svg,
      this.boxHeight,
      this.boxWidth,
      this.svgWidth,
      this.svgHeight,
      this.landWidth,
      this.landHeight,
      this.svgBottomPadding, this.reflectWidth});

  @override
  Widget build(BuildContext context) {
    return index ==
            null // check if the index didn't pass to the class as it be null or passed and have a value
        ? SvgWithLandBox(
            animalSvgPath: svg,
            boxHeight: boxHeight,
            boxWidth: boxWidth,
            svgHeight: svgHeight,
            svgWidth: svgWidth,
            landHeight: landHeight,
            landWidth: landWidth,
            svgBottomPadding: svgBottomPadding)
        : index!.isOdd
            ? SvgWithLandBox(
                animalSvgPath: svg,
                boxHeight: boxHeight,
                boxWidth: boxWidth,
                svgHeight: svgHeight,
                svgWidth: svgWidth,
                landHeight: landHeight,
                landWidth: landWidth,
                svgBottomPadding: svgBottomPadding)
            : Transform(
                transform: Matrix4.translationValues(
                  reflectWidth??110, // the width of the Widget to reflect it in its position
                  0.0,
                  0.0,
                )..scale(
                    -1.0,
                    1.0,
                    1.0,
                  ),
                child: SvgWithLandBox(
                    animalSvgPath: svg,
                    boxHeight: boxHeight,
                    boxWidth: boxWidth,
                    svgHeight: svgHeight,
                    svgWidth: svgWidth,
                    landHeight: landHeight,
                    landWidth: landWidth,
                    svgBottomPadding: svgBottomPadding));
  }
}
