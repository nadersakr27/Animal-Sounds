import 'package:flutter/material.dart';
import 'package:voices_of_animals/Data/animal.dart';
import 'package:voices_of_animals/components/Texts/large_text.dart';
import 'package:voices_of_animals/components/Texts/mid_text.dart';
import 'package:voices_of_animals/components/constances.dart';

List<Widget> infoTextList(Animal animal) {
  return [
    LargeText(text: '${animal.name ?? "name"} is'),
    MidText(
      text: animal.discretion ?? "Animal",
      fontColor: App.primaryColor,
    ),
    const MidText(text: 'His sound\'s name is '),
    LargeText(
      text: animal.soundName ?? "name",
      fontColor: App.primaryColor,
    ),
  ];
}
