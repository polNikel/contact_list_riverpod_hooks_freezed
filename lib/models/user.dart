import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String displayName,
    String email,
    String userTag,
    String subsidary,
    String userCode,
    String salesRepCode,
    bool test,
    String posCode,
    String token,
    String provisionalTkn,
    DateTime tokenExpiration,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
