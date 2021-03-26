import 'package:contact_list_riverpod_hooks_freezed/data/controllers/contact_list_controller/contact_list_state.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/contact_list.dart';
import 'package:contact_list_riverpod_hooks_freezed/presentation/widgets/contact_card.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/loading_widget.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/message_display_widget.dart';
import 'package:contact_list_riverpod_hooks_freezed/shared/no_results_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactListSearchProvider = StateProvider<List<ContactList>>((ref) {
  final contactListState = ref.watch(contactListStateNotifierProvider.state);

  return contactListState.contacts;
});

class ContactPage extends HookWidget {
  final bool isRelatedContact = false;

  final _scrollController = useScrollController();
  final contactListProvider =
      useProvider(contactListStateNotifierProvider.state);
  bool isFinalPage = false;
  @override
  Widget build(BuildContext context) {
    _scrollController
      ..addListener(() async {
        if (_scrollController.position.pixels >
            _scrollController.position.maxScrollExtent -
                MediaQuery.of(context).size.height) {
          if (!isFinalPage) {
            context.read(contactListStateNotifierProvider).loadNextContacts();
          }
        }
      });

    final errorMessage = contactListProvider.errorMessage;
    isFinalPage = contactListProvider.isFinalPage;
    final _contactListItems = contactListProvider.contacts;

    if (_contactListItems == null) {
      if (errorMessage != null && errorMessage != "") {
        return Center(child: MessageDisplayWidget(message: errorMessage));
      }
      return Center(child: LoadingWidget());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: SafeArea(
        child: RefreshIndicator(
            onRefresh: () =>
                context.read(contactListStateNotifierProvider).getContacts(),
            child: ListView.builder(
                controller: _scrollController,
                itemCount: _contactListItems.length + 1,
                itemBuilder: (context, i) {
                  if (_contactListItems.length > 0) {
                    if (i == _contactListItems.length) {
                      if (isFinalPage) {
                        return Center(child: Text("Done"));
                      } else {
                        return LinearProgressIndicator();
                      }
                    }
                    return ContactCard(contact: _contactListItems[i]);
                  }
                  return Center(child: NoResults());
                })),
      ),
    );
  }
}
