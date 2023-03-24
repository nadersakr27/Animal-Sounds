
import 'package:flutter/material.dart';
import 'package:voices_of_animals/Data/animal.dart';
import 'package:voices_of_animals/components/Texts/constances.dart';
import 'package:voices_of_animals/components/units/arrow.dart';
import 'package:voices_of_animals/components/units/direction_svg.dart';
import 'package:voices_of_animals/components/units/info_texts_list.dart';
import 'package:voices_of_animals/components/units/land_box.dart';

class Body extends StatelessWidget {
  final Animal animal;
  late final int? index;
  // ignore: prefer_const_constructors_in_immutables
  Body({this.index, super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    final String svg = '${(animal.name ?? "chicken").toLowerCase()}.svg';
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            const ArrowBoxAppBar(),
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  const LandBox(width: double.infinity, height: 80),
                  DirectionSvgAccordionToIndex(
                    index: index,
                    svg: svg,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...infoTextList(animal),
                  const CircleAvatar(
                    backgroundColor: App.secondaryColor,
                    radius: 28,
                    child: Icon(
                      Icons.play_arrow,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Slider(value: 0.5, onChanged: (value) {}),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            )
            // to extract info texts from this list
          ],
        ),
      ),
    );
  }
}
