import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/units/land_box.dart';
import 'package:voices_of_animals/components/units/svg_box.dart';

class SvgWithLandBox extends StatelessWidget {
  const SvgWithLandBox({
    super.key,
    required this.animalSvgPath,
  });

  final String? animalSvgPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Stack(
        children: [
          const LandBox(
            width: 110,
            height: 56,
          ),
          SvgBox(animalSvgPath: animalSvgPath)
        ],
      ),
    );
  }
}
