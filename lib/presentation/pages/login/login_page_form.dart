import 'package:contact_list_riverpod_hooks_freezed/data/controllers/auth_controller/auth_state.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/app_input_decoration_text_form_from_edit.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/app_spacers.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/loading_widget.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/message_display_widget.dart';
import 'package:contact_list_riverpod_hooks_freezed/styles/login_page_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'login_page_colors.dart';

class LoginPageForm extends HookWidget {
  final _formKey;

  LoginPageForm(this._formKey);

  @override
  Widget build(BuildContext context) {
    final state = useProvider(authenticationStateNotifierProvider.state);

    return state.when(
      loading: () => LoadingWidget(),
      data: (user) => FormBuilder(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Email", style: LoginPageStyles.textStyle),
              AppSpacers.verticalSpaceSmall,
              FormBuilderTextField(
                name: 'email',
                maxLines: 1,
                decoration:
                    AppInputDecorationTextForm.inputDecorationinLoginTextForms(
                        "Email"),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.email(context),
                ]),
              ),
              AppSpacers.verticalSpaceMedium,
              Text("Password", style: LoginPageStyles.textStyle),
              AppSpacers.verticalSpaceSmall,
              FormBuilderTextField(
                name: 'password',
                maxLines: 1,
                decoration:
                    AppInputDecorationTextForm.inputDecorationinLoginTextForms(
                        "Passowrd"),
                obscureText: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.minLength(context, 5),
                ]),
                onSubmitted: (_) => _submit(context),
              ),
              AppSpacers.verticalSpaceMedium,
              Row(
                children: [
                  Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: LoginPageColors.buttonColor,
                          textStyle:
                              TextStyle(color: LoginPageColors.buttonTextColor),
                          padding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("LOGIN", style: LoginPageStyles.buttonStyle),
                      onPressed: () => _submit(context)),
                ],
              ),
            ],
          )),
      error: (error, _) => FormBuilder(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Email", style: LoginPageStyles.textStyle),
              AppSpacers.verticalSpaceSmall,
              FormBuilderTextField(
                name: 'email',
                maxLines: 1,
                decoration:
                    AppInputDecorationTextForm.inputDecorationinLoginTextForms(
                        "Email"),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.email(context),
                ]),
              ),
              AppSpacers.verticalSpaceMedium,
              Text("Password", style: LoginPageStyles.textStyle),
              AppSpacers.verticalSpaceSmall,
              FormBuilderTextField(
                name: 'password',
                maxLines: 1,
                decoration:
                    AppInputDecorationTextForm.inputDecorationinLoginTextForms(
                        "Passowrd"),
                obscureText: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.minLength(context, 5),
                ]),
                onSubmitted: (_) => _submit(context),
              ),
              AppSpacers.verticalSpaceMedium,
              Row(
                children: [
                  Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: LoginPageColors.buttonColor,
                          textStyle:
                              TextStyle(color: LoginPageColors.buttonTextColor),
                          padding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: Text("LOGIN", style: LoginPageStyles.buttonStyle),
                      onPressed: () => _submit(context)),
                ],
              ),
            ],
          )),
    );
  }

  _submit(BuildContext context) async {
    if (_formKey.currentState.saveAndValidate()) {
      await context.read(authenticationStateNotifierProvider).logIn(
          username: _formKey.currentState.value['email'],
          password: _formKey.currentState.value['password']);
    }
  }
}
