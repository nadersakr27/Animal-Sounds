import 'package:flutter/material.dart';
import 'package:voices_of_animals/size_config.dart';
import 'package:voices_of_animals/theme/theme.dart';
import 'pages/HomePage/home_page.dart';
import 'package:flutter/services.dart';
void main() {
  // to make app support only portrait mode and will not rotate when the user rotates the device.
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animal Sounds',
      // routes: routes,
      theme: theme(),
      home: const HomePage(),
      
    );
  }
}

