import 'package:flutter/material.dart';
import 'package:voices_of_animals/colors.dart';

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
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 8,
                spreadRadius: 2,
                color: AppColor.secondaryColor),
            BoxShadow(
                offset: Offset(-4, 1), blurRadius: 4, color: Colors.white),
            BoxShadow(offset: Offset(4, 1), blurRadius: 4, color: Colors.white),
          ],
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
