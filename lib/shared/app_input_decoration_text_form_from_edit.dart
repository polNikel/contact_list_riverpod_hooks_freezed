import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppInputDecorationTextForm {
  static InputDecoration inputDecorationinEditTextForms(String hintText) {
    return InputDecoration(
        hintText: hintText,
        labelText: hintText,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.accentColor)));
  }

  static InputDecoration inputDecorationinLoginTextForms(String hintText) {
    return InputDecoration(
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.accentColor),
        ));
  }

  static InputDecoration inputDecorationinSearchBarTextForms(String hintText) {
    return InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        hintText: "Buscar $hintText");
  }
}
