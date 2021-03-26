import 'dart:convert';
import 'package:contact_list_riverpod_hooks_freezed/core/utils/api_client.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authRemoteDataSourceProvider = Provider.autoDispose<AuthRemoteDataSource>(
    (ref) => AuthRpRemoteDataSourceImpl(ref.read));

abstract class AuthRemoteDataSource {
  Future<User> logIn({String username, String password});
  Future<String> renewToken({@required User user});
}

class AuthRpRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Reader read;
  final ApiClient apiClient;

  AuthRpRemoteDataSourceImpl(this.read) : apiClient = read(apiClientProvider);

  @override
  Future<User> logIn(
      {@required String username, @required String password}) async {
    bool test = userIdContainsTest(username);
    final jsonMap = await apiClient.postJson(
        path: '/api/v1/login/',
        test: test,
        headers: {'content-type': "application/json"},
        body: jsonEncode({
          "email": username,
          "password": password,
          "test": test.toString()
        }));

    jsonMap["data"]["TEST"] = test;

    return User.fromJson(jsonMap['data']);
  }

  Future<String> renewToken({@required User user}) async {
    final jsonMap = await apiClient.postJson(
        path: "/api/v1/renew_token",
        test: user.test,
        headers: {"content-type": "application/json"},
        body: jsonEncode({"NIKTKN": user.token, "test": user.test.toString()}));

    var _userMap = user.toJson();
    _userMap["PROVISIONAL_TKN"] = jsonMap["data"]["PROVISIONAL_TKN"];
    user = User.fromJson(_userMap);
    final prefs = await SharedPreferences.getInstance();

    final userData = json.encode(user.toJson());
    prefs.setString('CACHED_USER', userData);
    return (_userMap["PROVISIONAL_TKN"]);
  }

  bool userIdContainsTest(String userId) {
    if (userId.contains("test")) {
      return true;
    } else {
      return false;
    }
  }
}
