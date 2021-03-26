import 'package:contact_list_riverpod_hooks_freezed/core/utils/api_client.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/contact_list.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';

final contactRemoteDataSourceProvider =
    Provider.autoDispose<ContactRemoteDataSource>(
        (ref) => ContactRemoteDataSourceImpl(ref.read));

List<ContactList> contacts = [];

abstract class ContactRemoteDataSource {
  Future<List<ContactList>> getContacts(
      {@required User user, String query, int page});

  Future<List<ContactList>> loadNextContacts({
    @required User user,
    @required int page,
    String query,
  });
}

class ContactRemoteDataSourceImpl implements ContactRemoteDataSource {
  final Reader read;
  final ApiClient apiClient;

  ContactRemoteDataSourceImpl(this.read) : apiClient = read(apiClientProvider);

  @override
  Future<List<ContactList>> getContacts(
      {@required User user, String query, int page}) async {
    final Map<String, String> _query = {
      'page': '$page',
      'pageSize': '20',
    };

    if (query.isNotEmpty) {
      // String _queryString =
      //     query.split(' ').map((value) => '%$value%').join(' ');
      // _query.addAll({'busqueda': _queryString});
      String _queryString = query.toUpperCase();
      _query.addAll({'busqueda': "%$_queryString%"});
    }

    final jsonMap = await apiClient.getJson2(
        path: '/api/v1/contact/',
        token: user.provisionalTkn,
        test: user.test,
        query: _query);

    contacts.clear();

    final data = jsonMap["data"];

    data?.forEach((c) async {
      contacts.add(ContactList.fromJson(c));
    });
    return contacts;
  }

  @override
  Future<List<ContactList>> loadNextContacts(
      {User user, String query, int page}) async {
    final Map<String, String> _query = {
      'page': '$page',
      'pageSize': '20',
    };

    if (query.isNotEmpty) {
      // String _queryString =
      //     query.split(' ').map((value) => '%$value%').join(' ');
      // _query.addAll({'busqueda': _queryString});
      String _queryString = query.toUpperCase();
      _query.addAll({'busqueda': "%$_queryString%"});
    }

    final jsonMap = await apiClient.getJson2(
        path: '/api/v1/contact/',
        token: user.provisionalTkn,
        test: user.test,
        query: _query);

    final data = jsonMap["data"];

    data?.forEach((c) async {
      print(c["COD_INST"]);
      contacts.add(ContactList.fromJson(c));
    });
    return contacts;
  }
}
