import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primaryColor = Color.fromRGBO(255, 195, 0, 1);
  static const Color accentColor = Color.fromRGBO(27, 54, 93, 1);
  static const Color thirdColor = Color.fromRGBO(161, 75, 166, 1);
  static const Color textColor = Colors.black;
  static const Color errorColor = Colors.red;
  static const Color appBarIconActive = Colors.white;
  static const Color appBarIconNormal = Colors.black;

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}
