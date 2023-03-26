import 'package:flutter/material.dart';
import 'package:voices_of_animals/Data/animal.dart';
import 'package:voices_of_animals/components/units/animal_card.dart';
import 'package:voices_of_animals/Data/data.dart';
import 'package:voices_of_animals/components/units/my_banner.dart';
import 'package:voices_of_animals/pages/Details/details.dart';
import 'package:voices_of_animals/pages/HomePage/my_behavior.dart';
import 'package:voices_of_animals/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    List<Animal> data =
        Data.animals; // to load it only one time in building the widget
    return Column(children: [
      const MyBanner(bgSvgPath: "assets/svg/land.svg", title: "Animal\nSounds"),
      Expanded(
        child: ScrollConfiguration(
          // to remove scroll glow
          behavior: MyBehavior(),
          child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (context, i) {
                return Directionality(
                  // I want to reflect the whole card if its indes is even
                  // here, I can't use Transform Widget to reflect because therer is a tText Widget in the Card which will be reflected
                  // so I go to Directionality widget
                  textDirection:
                      i.isOdd ? TextDirection.rtl : TextDirection.ltr,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                animal: data[i],
                                index: i,
                              )));
                    },
                    child: AnimalCard(
                        index: i,
                        animalName: data[i].name ?? "no name",
                        animalSvgPath:
                            '${(data[i].name ?? '').toLowerCase()}.svg',
                        animalSoundName: data[i].soundName ?? 'no sound name'),
                  ),
                );
              }),
        ),
      ),
      SizedBox(
        height: getProportionateScreenHeight(20),
      )
    ]);
  }
}
