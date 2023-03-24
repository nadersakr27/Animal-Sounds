import 'package:flutter/material.dart';
import 'package:voices_of_animals/Data/animal.dart';
import 'package:voices_of_animals/components/Texts/large_text.dart';
import 'package:voices_of_animals/components/Texts/mid_text.dart';
import 'package:voices_of_animals/components/constances.dart';

List<Widget> infoTextList(Animal animal) {
  return [
    // const SizedBox(
    //   height: 20,
    // ),
    LargeText(text: animal.name ?? "name"),
    Container(
      color: Colors.amber,
      child: const MidText(
        text: "lion is one of the most dangerous animal",
        fontColor: App.primaryColor,
      ),
    ),
    const SizedBox(
      height: 20,
    ),
    Container(
        color: Colors.blueAccent,
        child: const MidText(text: 'His sound\'s name is ')),
    const SizedBox(
      height: 20,
    ),
    Container(
      color: Colors.amber,
      child: LargeText(
        text: animal.soundName ?? "name",
        fontColor: App.primaryColor,
      ),
    ),
    const SizedBox(
      height: 20,
    ),
  ];
}
