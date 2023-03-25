import 'package:flutter/material.dart';
import 'package:voices_of_animals/colors.dart';
import 'package:voices_of_animals/components/units/name_sound_texts.dart';
import 'package:voices_of_animals/components/units/reflectable_svg_land.dart';

class AnimalCard extends StatelessWidget {
  final String animalName;
  final String animalSvgPath;
  final String animalSoundName;
  late final int?
      index; // I pass index to this class because I need to reflect Svg according to its index
  // Index is nullable to be able to use it without being in a list or has an order
  // ignore: prefer_const_constructors_in_immutables
  AnimalCard({
    Key? key,
    this.index,
    required this.animalName,
    required this.animalSvgPath,
    required this.animalSoundName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 140,
      child: Row(
        children: [
          Hero(
              tag: animalSvgPath,
              child: ReflectableSvgAndLand(
                landHeight: 62,
                svg: animalSvgPath,
                index: index,
                svgBottomPadding: 10,
              )),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 160,
              height: 80,
              child: AnimalNameTextAndItsSoundText(
                animalName: animalName,
                animalSoundName: animalSoundName,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}
