import 'package:contact_list_riverpod_hooks_freezed/models/contact_list.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/app_padding.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/app_spacers.dart';
import 'package:contact_list_riverpod_hooks_freezed/styles/card_styles.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final ContactList contact;

  const ContactCard({Key key, this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.appDefaultPadding),
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(AppPadding.appDefaultPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            (contact.contactType != null || contact.status != null)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      (contact.contactType != null)
                          ? Text(contact.contactType,
                              style: CardStyles.titleAccent)
                          : Container(),
                      (contact.status != null)
                          ? Row(
                              children: [
                                Icon(Icons.label),
                                AppSpacers.horizontalSpaceSmall,
                                Text(contact.status,
                                    style: CardStyles.textStyle),
                              ],
                            )
                          : Container(),
                    ],
                  )
                : Container(),
            AppSpacers.verticalSpaceSmall,
            (contact.companyName != null)
                ? Text(contact.companyName, style: CardStyles.cardTitle)
                : Container(),
            AppSpacers.verticalSpaceSmall,
            (contact.contactName != null)
                ? Text(contact.contactName, style: CardStyles.textStyle)
                : Container(),
            AppSpacers.verticalSpaceSmall,
            (contact.email != null && contact.phone != null)
                ? (contact.phone.length <= 12 && contact.email.length <= 20)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          (contact.phone != null)
                              ? Row(
                                  children: [
                                    Icon(Icons.phone),
                                    AppSpacers.horizontalSpaceSmall,
                                    Text(contact.phone,
                                        style: CardStyles.textStyleSmall)
                                  ],
                                )
                              : null,
                          (contact.email != null)
                              ? Row(
                                  children: [
                                    Icon(Icons.mail),
                                    AppSpacers.horizontalSpaceSmall,
                                    Text(contact.email,
                                        style: CardStyles.textStyleSmall)
                                  ],
                                )
                              : Container()
                        ],
                      )
                    : Column(
                        children: [
                          (contact.phone != null)
                              ? Row(
                                  children: [
                                    Icon(Icons.phone),
                                    AppSpacers.horizontalSpaceSmall,
                                    Text(contact.phone,
                                        style: CardStyles.textStyleSmall)
                                  ],
                                )
                              : null,
                          (contact.email != null)
                              ? Row(
                                  children: [
                                    Icon(Icons.mail),
                                    AppSpacers.horizontalSpaceSmall,
                                    Flexible(
                                      child: Text(contact.email,
                                          style: CardStyles.textStyleSmall),
                                    )
                                  ],
                                )
                              : Container()
                        ],
                      )
                : Container()
          ]),
        ),
      ),
    );
  }
}
