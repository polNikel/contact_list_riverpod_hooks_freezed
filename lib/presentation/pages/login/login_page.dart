import 'package:contact_list_riverpod_hooks_freezed/shared/app_spacers.dart';
import 'package:contact_list_riverpod_hooks_freezed/styles/login_page_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'login_page_colors.dart';
import 'login_page_form.dart';

class LoginPage extends HookWidget {
  static const LOGIN_PAGE_ROUTE = '/login';
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        body: Container(
          color: LoginPageColors.backgroundColor,
          child: SingleChildScrollView(
            child: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppSpacers.verticalSpaceMedium,
                  Container(
                    width: deviceSize.width * 0.75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sales Team Manager',
                          style: LoginPageStyles.titleStyle,
                        ),
                        AppSpacers.verticalSpaceMedium,
                        LoginPageForm(_formKey),
                      ],
                    ),
                  ),
                  AppSpacers.verticalSpaceMedium,
                  Text(
                    'Small Things Matter',
                    style: LoginPageStyles.brandingStyle,
                  ),
                  AppSpacers.verticalSpaceMedium,
                  Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Powered by Nikel',
                      style: LoginPageStyles.footerStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
