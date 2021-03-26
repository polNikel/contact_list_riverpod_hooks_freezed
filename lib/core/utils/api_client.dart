import 'dart:async';
import 'dart:convert';

import 'package:contact_list_riverpod_hooks_freezed/core/error/exceptions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClientImplFake());

abstract class ApiClient {
  Future<Map<String, dynamic>> getJson(
      {@required String path,
      @required String token,
      @required bool test,
      Map<String, String> query});

  Future<Map<String, dynamic>> getJson2(
      {@required String path,
      @required String token,
      @required bool test,
      Map<String, String> query});
  Future<Map<String, dynamic>> postJson(
      {@required String path,
      @required bool test,
      @required Map<String, String> headers,
      Map<String, String> query,
      dynamic body});
  Future<Map<String, dynamic>> postJson2(
      {@required String path,
      @required bool test,
      @required Map<String, String> headers,
      Map<String, String> query,
      dynamic body});
  Future<Map<String, dynamic>> patchJson(String path, bool test,
      {@required Map<String, String> headers,
      Map<String, String> query,
      dynamic body});
  Future<Map<String, dynamic>> patchJson2(String path, bool test,
      {@required Map<String, String> headers,
      Map<String, String> query,
      dynamic body});
  Future<Map<String, dynamic>> deleteJson(
      {@required String path,
      @required bool test,
      @required String token,
      Map<String, String> query});
  Future<dynamic> deleteJson2(
      {@required String path,
      @required bool test,
      @required String token,
      Map<String, String> query});
}

class ApiClientImpl implements ApiClient {
  static final _host = 'api2.celo.com';
  static final _hostTest = 'testapi.celo.com';

  static final _timeOutSeconds = 45;
  static final httpClient = new http.Client();

  Future<Map<String, dynamic>> getJson(
      {@required String path,
      @required String token,
      @required bool test,
      Map<String, String> query}) async {
    final Map<String, String> _headers = {
      'authorization': "Bearer $token",
    };

    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    http.Response response;
    try {
      response = await httpClient
          .get(uri, headers: _headers)
          .timeout(Duration(seconds: _timeOutSeconds));
    } on TimeoutException {
      throw ServerTimeoutException();
    } on Exception catch (e) {
      throw UnexpectedException(e.toString());
    }
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      return jsonMap;
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body);
    } else {
      throw ServerException();
    }
  }

  Future<Map<String, dynamic>> postJson(
      {@required String path,
      @required Map<String, String> headers,
      @required bool test,
      Map<String, String> query,
      dynamic body}) async {
    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    http.Response response;
    try {
      response = await httpClient
          .post(uri, headers: headers, body: body)
          .timeout(Duration(seconds: _timeOutSeconds));
    } on TimeoutException {
      throw ServerTimeoutException();
    } on Exception catch (e) {
      throw UnexpectedException(e.toString());
    }

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      return jsonMap;
    } else if (response.statusCode == 401 || response.statusCode == 403) {
      throw UnauthorisedException();
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body);
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> deleteJson(
      {String path, String token, bool test, Map<String, String> query}) async {
    Map<String, String> headers = {"authorization": "Bearer $token"};
    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    http.Response response;
    try {
      response = await httpClient
          .delete(uri, headers: headers)
          .timeout(Duration(seconds: _timeOutSeconds));
    } on TimeoutException {
      throw ServerTimeoutException();
    } on Exception catch (e) {
      throw UnexpectedException(e.toString());
    }

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      return jsonMap;
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> patchJson(String path, bool test,
      {Map<String, String> headers, Map<String, String> query, body}) async {
    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    http.Response response;
    try {
      response = await httpClient
          .patch(uri, headers: headers, body: body)
          .timeout(Duration(seconds: _timeOutSeconds));
    } on TimeoutException {
      throw ServerTimeoutException();
    } on Exception catch (e) {
      throw UnexpectedException(e.toString());
    }

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      return jsonMap;
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> getJson2(
      {String path, String token, bool test, Map<String, String> query}) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> deleteJson2(
      {String path, bool test, String token, Map<String, String> query}) {
    // TODO: implement deleteJson2
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> patchJson2(String path, bool test,
      {Map<String, String> headers, Map<String, String> query, body}) {
    // TODO: implement patchJson2
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> postJson2(
      {String path,
      bool test,
      Map<String, String> headers,
      Map<String, String> query,
      body}) {
    // TODO: implement postJson2
    throw UnimplementedError();
  }
}

class ApiClientImplFake implements ApiClient {
  static final _host = 'api2.celo.com';
  static final _hostTest = 'testapi.celo.com';

  static final _timeOutSeconds = 60;
  static final httpClient = new http.Client();

  Future<Map<String, dynamic>> getJson2(
      {@required String path,
      @required String token,
      @required bool test,
      Map<String, String> query}) async {
    final Map<String, String> _headers = {
      'authorization': "Bearer $token",
    };

    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    http.Response response;

    try {
      response = await httpClient
          .get(uri, headers: _headers)
          .timeout(Duration(seconds: _timeOutSeconds));
    } on TimeoutException {
      throw ServerTimeoutException();
    } on Exception catch (e) {
      throw UnexpectedException(e.toString());
    }
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      return jsonMap;
    } else if (response.statusCode == 401 || response.statusCode == 403) {
      throw UnauthorisedException();
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body);
    } else {
      throw ServerException();
    }
  }

  Future<Map<String, dynamic>> getJson(
      {@required String path,
      @required String token,
      @required bool test,
      Map<String, String> query}) async {
    // final Map<String, String> _headers = {
    //   'NIKTKN': token,
    // };

    // final uri =
    //     query != null ? Uri.https(_host, path, query) : Uri.https(_host, path);

    // http.Response response;
  }

  Future<Map<String, dynamic>> postJson(
      {@required String path,
      @required Map<String, String> headers,
      @required bool test,
      Map<String, String> query,
      dynamic body}) async {
    if (path.contains("login") || path.contains("renew_token")) {
      final uri = (test != null && test)
          ? query != null
              ? Uri.https(_hostTest, path, query)
              : Uri.https(_hostTest, path)
          : query != null
              ? Uri.https(_host, path, query)
              : Uri.https(_host, path);

      http.Response response;
      try {
        response = await httpClient
            .post(uri, headers: headers, body: body)
            .timeout(Duration(seconds: _timeOutSeconds));
      } on TimeoutException {
        throw ServerTimeoutException();
      } on Exception catch (e) {
        throw UnexpectedException(e.toString());
      }

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonMap = json.decode(response.body);
        return jsonMap;
      } else if (response.statusCode == 401) {
        throw UnauthorisedException();
      } else if (response.statusCode == 400) {
        throw BadRequestException(response.body);
      } else {
        throw ServerException();
      }
    } else {
      return {"id": "1"};
    }
  }

  Future<Map<String, dynamic>> postJson2(
      {@required String path,
      @required Map<String, String> headers,
      @required bool test,
      Map<String, String> query,
      dynamic body}) async {
    if (path.contains("login") || path.contains("renew_token")) {
      final uri = (test != null && test)
          ? query != null
              ? Uri.https(_hostTest, path, query)
              : Uri.https(_hostTest, path)
          : query != null
              ? Uri.https(_host, path, query)
              : Uri.https(_host, path);

      http.Response response;
      try {
        response = await httpClient
            .post(uri, headers: headers, body: body)
            .timeout(Duration(seconds: _timeOutSeconds));
      } on TimeoutException {
        throw ServerTimeoutException();
      } on Exception catch (e) {
        throw UnexpectedException(e.toString());
      }

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonMap = json.decode(response.body);
        return jsonMap;
      } else if (response.statusCode == 401) {
        throw UnauthorisedException();
      } else if (response.statusCode == 400) {
        throw BadRequestException(response.body);
      } else {
        throw ServerException();
      }
    } else {
      return {"id": "1"};
    }
  }

  Future<Map<String, dynamic>> deleteJson({
    String path,
    bool test,
    String token,
    Map<String, String> query,
  }) async {
    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    return {};
  }

  @override
  Future deleteJson2(
      {String path, String token, bool test, Map<String, String> query}) async {
    Map<String, String> headers = {"authorization": "Bearer $token"};
    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    http.Response response;
    try {
      response = await httpClient
          .delete(uri, headers: headers)
          .timeout(Duration(seconds: _timeOutSeconds));
    } on TimeoutException {
      throw ServerTimeoutException();
    } on Exception catch (e) {
      throw UnexpectedException(e.toString());
    }

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      return jsonMap;
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> patchJson(String path, bool test,
      {Map<String, String> headers, Map<String, String> query, body}) async {
    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    await Future.delayed(Duration(seconds: 1)).then((value) {
      print("Edit ${body["id"]}");
    });
    return body;
  }

  @override
  Future<Map<String, dynamic>> patchJson2(String path, bool test,
      {Map<String, String> headers, Map<String, String> query, body}) async {
    final uri = (test)
        ? query != null
            ? Uri.https(_hostTest, path, query)
            : Uri.https(_hostTest, path)
        : query != null
            ? Uri.https(_host, path, query)
            : Uri.https(_host, path);

    http.Response response;
    try {
      response = await httpClient
          .patch(uri, headers: headers, body: body)
          .timeout(Duration(seconds: _timeOutSeconds));
    } on TimeoutException {
      throw ServerTimeoutException();
    } on Exception catch (e) {
      throw UnexpectedException(e.toString());
    }

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      return jsonMap;
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body);
    } else {
      throw ServerException();
    }
  }
}
