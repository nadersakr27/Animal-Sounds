
import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/constances.dart';

class LandBox extends StatelessWidget {
  final double width;
  final double height;
  const LandBox({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: App.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}