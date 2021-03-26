import 'package:contact_list_riverpod_hooks_freezed/shared/app_colors.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/app_styles.dart';
import 'package:flutter/material.dart';

abstract class CardStyles {
  static final TextStyle textStyle = AppStyles.textStyle.copyWith(
    fontFamily: AppStyles.secondaryFont,
  );

  static final TextStyle textStyleSmall = CardStyles.textStyle.copyWith(
    fontSize: 14,
  );

  static final TextStyle textStyleBold = CardStyles.textStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle titleAccent = CardStyles.textStyle.copyWith(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: AppColors.accentColor,
  );

  static final TextStyle cardTitle = CardStyles.textStyle.copyWith(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle textStyleBoldGrey = CardStyles.textStyle.copyWith(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );
}
