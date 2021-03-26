import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static const String primaryFont = 'ProximaNova';
  static const String secondaryFont = 'Archia';

  static final TextStyle textStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    fontFamily: AppStyles.primaryFont,
    color: AppColors.textColor,
  );
}
