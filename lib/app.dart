import 'package:contact_list_riverpod_hooks_freezed/presentation/pages/contact_list/contact_list_page.dart';
import 'package:contact_list_riverpod_hooks_freezed/presentation/pages/login/login_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'data/controllers/auth_controller/auth_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/localization/form_builder_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(authenticationStateNotifierProvider.state).data;

    final user = state?.data;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Celo Sales Team Manager',
      localizationsDelegates: [
        FormBuilderLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      home: (user != null) ? ContactPage() : LoginPage(),
    );
  }
}
