import 'package:flutter/material.dart';
import 'package:voices_of_animals/pages/HomePage/body.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}
