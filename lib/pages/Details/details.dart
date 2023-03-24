import 'package:flutter/material.dart';
import 'package:voices_of_animals/Data/animal.dart';
import 'package:voices_of_animals/components/units/arrow.dart';
import 'package:voices_of_animals/components/units/direction_svg.dart';
import 'package:voices_of_animals/components/units/info_texts_list.dart';
import 'package:voices_of_animals/components/units/land_box.dart';

class DetailsPage extends StatelessWidget {
  final Animal animal;
  late final int? index;
  static const routeName = '/detailsPage';
  DetailsPage({this.index, super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(animal: animal, index: index),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final Animal animal;
  late final int? index;
  Body({this.index, super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    final String svg = '${(animal.name ?? "chicken").toLowerCase()}.svg';
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          const ArrowBoxAppBar(),
          Container(
            color: Colors.amber,
            height: 250,
            child: Stack(
              children: [
                const LandBox(width: double.infinity, height: 100),
                DirectionSvgAccordionToIndex(
                  index: index,
                  svg: svg,
                ),
              ],
            ),
          ),
          ...infoTextList(animal),
          const CircleAvatar(
            radius: 28,
            child: Icon(
              Icons.play_arrow,
              size: 30,
            ),
          ) // to extract info texts from this list
        ],
      ),
    );
  }
}
