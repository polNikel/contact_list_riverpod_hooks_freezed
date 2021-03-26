import 'package:flutter/material.dart';

abstract class AppPadding {
  static EdgeInsets getFloatingButtonPadding(BuildContext context) {
    return EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.07);
  }

  static final EdgeInsetsGeometry scaffoldPadding = EdgeInsets.only(
      top: appDefaultPadding,
      right: appDefaultPadding,
      left: appDefaultPadding);

  static double appDefaultPadding = 10;
  static double appDefaultPaddingBottom = appDefaultPadding * 1;

  static final EdgeInsetsGeometry loginPaddingButton =
      EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0);
}
