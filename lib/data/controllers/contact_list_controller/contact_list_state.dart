import 'package:contact_list_riverpod_hooks_freezed/core/error/failures.dart';
import 'package:contact_list_riverpod_hooks_freezed/data/repositories/auth_repository.dart';
import 'package:contact_list_riverpod_hooks_freezed/data/repositories/contact_repository.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/contact_list.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_state.freezed.dart';

@freezed
abstract class ContactListState with _$ContactListState {
  const factory ContactListState({
    @Default(0) int page,
    List<ContactList> contacts,
    @Default("") String query,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isFinalPage,
    @Default("") String errorMessage,
  }) = _ContactListState;

  const ContactListState._();
}

final contactListStateNotifierProvider =
    StateNotifierProvider<ContactListStateNotifier>((ref) {
  return ContactListStateNotifier(ref.read);
});

class ContactListStateNotifier extends StateNotifier<ContactListState> {
  final Reader read;

  ContactListStateNotifier(this.read) : super(ContactListState()) {
    getContacts();
  }

  Future<void> getContacts({
    String query,
  }) async {
    final contactUseCase = read(contactRepositoryProvider);
    String _query = query ?? state.query;
    int _page = 0;

    state = state.copyWith(isLoading: true);

    final failureOrAuth =
        await contactUseCase.getContacts(query: _query, page: _page);
    failureOrAuth.fold(
        (failure) async => state = (failure is UnauthorisedFailure)
            ? await renewTokenGetContacts(query)
            : gestureError(failure), (contacts) async {
      state = state.copyWith(
          contacts: contacts,
          query: _query,
          isFinalPage: checkIsFinalPage(contacts, 1),
          isLoading: false);
    });
  }

  Future<void> loadNextContacts() async {
    final contactUseCase = read(contactRepositoryProvider);

    int _page = 1;

    String _query = "";

    if (state.isLoading) {
      return;
    }

    _query = state.query ?? _query;

    _page = (state.page == 0 || state.page == null) ? _page : state.page;

    state = state.copyWith(isLoading: true);

    final failureOrAuth = await contactUseCase.loadNextContacts(
      page: _page,
      query: _query,
    );
    failureOrAuth.fold(
        (failure) async => state = (failure is UnauthorisedFailure)
            ? await renewTokenLoadNextContacts()
            : gestureError(failure), (contacts) async {
      _page++;
      state = state.copyWith(
          page: _page,
          query: _query,
          isFinalPage: checkIsFinalPage(contacts, _page),
          contacts: contacts,
          isLoading: false);
    });
  }

  Future<void> renewToken({String method, Map<String, String> query}) async {
    final authUseCase = read(authRepositoryProvider);

    final failureOrRenewToken = await authUseCase.renewToken();
    failureOrRenewToken.fold(
        (failure) => state = (failure is UnauthorisedFailure)
            ? authUseCase.logOut()
            : gestureError(failure),
        (result) => print(result));
  }

  bool checkIsFinalPage(List<ContactList> contacts, int page) {
    int numContactXPage = 20;
    int numTeoricContacts = page * numContactXPage;
    return (numTeoricContacts > contacts.length) ? true : false;
  }

  Future<ContactListState> renewTokenLoadNextContacts() async {
    print("No valid token");
    await renewToken();
    loadNextContacts();
    return state.copyWith(isLoading: true);
  }

  Future<ContactListState> renewTokenGetContacts(String query) async {
    print("No valid token");
    await renewToken();
    getContacts(query: query);

    return state.copyWith(isLoading: true);
  }

  ContactListState gestureError(Failure failure) {
    if (failure is BadRequestFailure) {
      return state = state.copyWith(
          isLoading: false,
          isLoadMoreError: true,
          errorMessage: failure.errorMessage);
    }
    return state = state.copyWith(
        isLoading: false,
        isLoadMoreError: true,
        errorMessage: failure.toString());
  }
}
