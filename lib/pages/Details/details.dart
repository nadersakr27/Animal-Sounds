import 'package:flutter/material.dart';
import 'package:voices_of_animals/Data/animal.dart';
import 'package:voices_of_animals/pages/Details/body.dart';

class DetailsPage extends StatelessWidget {
  final Animal animal;
  late final int? index;
  static const routeName = '/detailsPage';
  // ignore: prefer_const_constructors_in_immutables
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