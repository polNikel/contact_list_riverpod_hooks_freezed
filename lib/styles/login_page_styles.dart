import 'package:contact_list_riverpod_hooks_freezed/presentation/pages/login/login_page_colors.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/app_styles.dart';
import 'package:flutter/material.dart';

abstract class LoginPageStyles {
  static final TextStyle textStyle = AppStyles.textStyle.copyWith(
    fontFamily: AppStyles.secondaryFont,
  );

  static final TextStyle titleStyle = LoginPageStyles.textStyle.copyWith(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle brandingStyle = LoginPageStyles.textStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle footerStyle = LoginPageStyles.textStyle.copyWith(
    fontSize: 16,
  );

  static final TextStyle buttonStyle = LoginPageStyles.textStyle.copyWith(
    fontSize: 16,
    color: LoginPageColors.buttonTextColor,
    fontWeight: FontWeight.bold,
  );
}
