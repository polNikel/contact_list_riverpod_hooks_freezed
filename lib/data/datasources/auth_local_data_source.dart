import 'dart:convert';

import 'package:contact_list_riverpod_hooks_freezed/core/error/exceptions.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authLocalDataSourceProvider = Provider.autoDispose<AuthLocalDataSource>(
    (ref) => AuthRpLocalDataSourceImpl(ref.read));

abstract class AuthLocalDataSource {
  Future<User> getSignedInUser();
  Future<void> setSignedInUser({@required User user});
  Future<void> signOut();
}

class AuthRpLocalDataSourceImpl implements AuthLocalDataSource {
  final Reader read;
  static const CACHED_USER_KEY = 'CACHED_USER';

  AuthRpLocalDataSourceImpl(this.read);

  @override
  Future<User> getSignedInUser() async {
    final SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    final jsonString = _sharedPreferences.getString(CACHED_USER_KEY);
    if (jsonString != null) {
      return Future.value(User.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> signOut() async {
    final SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    return _sharedPreferences.remove(CACHED_USER_KEY);
  }

  @override
  Future<void> setSignedInUser({@required User user}) async {
    final SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    return _sharedPreferences.setString(
      CACHED_USER_KEY,
      json.encode(user.toJson()),
    );
  }
}
