
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgBox extends StatelessWidget {
  final double? width;
  final double? height;
  const SvgBox({
    super.key,
    required this.animalSvgPath, this.width, this.height,
  });

  final String? animalSvgPath;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? 110,
        height: height ?? 110,
        child: SvgPicture.asset('assets/svg/${animalSvgPath!}'),
      ),
    );
  }
}
