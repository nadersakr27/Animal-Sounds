import 'package:flutter/material.dart';

ThemeData theme() {
    Color color = const Color(0xff043F41);
    MaterialColor materialColor = MaterialColor(color.value, {
      50: color.withOpacity(0.1),
      100: color.withOpacity(0.2),
      200: color.withOpacity(0.3),
      300: color.withOpacity(0.4),
      400: color.withOpacity(0.5),
      500: color.withOpacity(0.6),
      600: color.withOpacity(0.7),
      700: color.withOpacity(0.8),
      800: color.withOpacity(0.9),
      900: color.withOpacity(1.0),
    });
    return ThemeData(
      fontFamily: "BushForest",
      primarySwatch: materialColor,
    );
  }