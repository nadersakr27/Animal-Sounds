import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/constances.dart';
import 'package:voices_of_animals/components/Texts/mid_text.dart';
import 'package:voices_of_animals/components/Texts/small_text.dart';
import 'package:voices_of_animals/components/units/svgbox_landbox.dart';

class AnimalCard extends StatelessWidget {
  final String? animalName;
  final String? animalSvgPath;
  final String? animalSoundName;
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
      height: 130,
      child: Row(
        children: [
          index ==
                  null // check if the index didn't pass to the class as it be null or passed and have a value
              ? SvgWithLandBox(animalSvgPath: animalSvgPath)
              : index!.isOdd
                  ? SvgWithLandBox(animalSvgPath: animalSvgPath)
                  : Transform(
                      transform: Matrix4.translationValues(
                        110, // the width of the Widget to reflect it in its position
                        0.0,
                        0.0,
                      )..scale(
                          -1.0,
                          1.0,
                          1.0,
                        ),
                      child: SvgWithLandBox(animalSvgPath: animalSvgPath),
                    ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 160,
              height: 80,
              child: AnimalNameTextAndItsSoundText(
                  animalName: animalName, animalSoundName: animalSoundName),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            color: App.primaryColor,
          ),
        ],
      ),
    );
  }
}

class AnimalNameTextAndItsSoundText extends StatelessWidget {
  const AnimalNameTextAndItsSoundText({
    super.key,
    required this.animalName,
    required this.animalSoundName,
  });

  final String? animalName;
  final String? animalSoundName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MidText(
          text: animalName!,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 8,
        ),
        SmallText(text: "His Sound : $animalSoundName"),
      ],
    );
  }
}
