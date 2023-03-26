import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/Texts/mid_text.dart';
import 'package:voices_of_animals/components/Texts/small_text.dart';
import 'package:voices_of_animals/size_config.dart';

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
        ),
        SizedBox(
          height:  getProportionateScreenHeight(8),
        ),
        SmallText(text: "His Sound : $animalSoundName"),
      ],
    );
  }
}
