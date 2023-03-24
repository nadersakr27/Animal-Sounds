import 'package:flutter/material.dart';
import 'package:voices_of_animals/Data/animal.dart';
import 'package:voices_of_animals/Data/data.dart';
import 'package:voices_of_animals/pages/Details/details.dart';
// import 'package:voices_of_animals/routes.dart';
import 'package:voices_of_animals/theme/theme.dart';
import 'pages/HomePage/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animals Sounds',
      // routes: routes,
      theme: theme(),
      home: DetailsPage(
        index: 4,
        animal: Animal(
          name: "Lion",
          soundName: "wawoo",
        ),
      ),
    );
  }
}
