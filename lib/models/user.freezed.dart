// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {String displayName,
      String email,
      String userTag,
      String subsidary,
      String userCode,
      String salesRepCode,
      bool test,
      String posCode,
      String token,
      String provisionalTkn,
      DateTime tokenExpiration}) {
    return _User(
      displayName: displayName,
      email: email,
      userTag: userTag,
      subsidary: subsidary,
      userCode: userCode,
      salesRepCode: salesRepCode,
      test: test,
      posCode: posCode,
      token: token,
      provisionalTkn: provisionalTkn,
      tokenExpiration: tokenExpiration,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get displayName;
  String get email;
  String get userTag;
  String get subsidary;
  String get userCode;
  String get salesRepCode;
  bool get test;
  String get posCode;
  String get token;
  String get provisionalTkn;
  DateTime get tokenExpiration;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String displayName,
      String email,
      String userTag,
      String subsidary,
      String userCode,
      String salesRepCode,
      bool test,
      String posCode,
      String token,
      String provisionalTkn,
      DateTime tokenExpiration});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object displayName = freezed,
    Object email = freezed,
    Object userTag = freezed,
    Object subsidary = freezed,
    Object userCode = freezed,
    Object salesRepCode = freezed,
    Object test = freezed,
    Object posCode = freezed,
    Object token = freezed,
    Object provisionalTkn = freezed,
    Object tokenExpiration = freezed,
  }) {
    return _then(_value.copyWith(
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      userTag: userTag == freezed ? _value.userTag : userTag as String,
      subsidary: subsidary == freezed ? _value.subsidary : subsidary as String,
      userCode: userCode == freezed ? _value.userCode : userCode as String,
      salesRepCode: salesRepCode == freezed
          ? _value.salesRepCode
          : salesRepCode as String,
      test: test == freezed ? _value.test : test as bool,
      posCode: posCode == freezed ? _value.posCode : posCode as String,
      token: token == freezed ? _value.token : token as String,
      provisionalTkn: provisionalTkn == freezed
          ? _value.provisionalTkn
          : provisionalTkn as String,
      tokenExpiration: tokenExpiration == freezed
          ? _value.tokenExpiration
          : tokenExpiration as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String email,
      String userTag,
      String subsidary,
      String userCode,
      String salesRepCode,
      bool test,
      String posCode,
      String token,
      String provisionalTkn,
      DateTime tokenExpiration});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object displayName = freezed,
    Object email = freezed,
    Object userTag = freezed,
    Object subsidary = freezed,
    Object userCode = freezed,
    Object salesRepCode = freezed,
    Object test = freezed,
    Object posCode = freezed,
    Object token = freezed,
    Object provisionalTkn = freezed,
    Object tokenExpiration = freezed,
  }) {
    return _then(_User(
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      userTag: userTag == freezed ? _value.userTag : userTag as String,
      subsidary: subsidary == freezed ? _value.subsidary : subsidary as String,
      userCode: userCode == freezed ? _value.userCode : userCode as String,
      salesRepCode: salesRepCode == freezed
          ? _value.salesRepCode
          : salesRepCode as String,
      test: test == freezed ? _value.test : test as bool,
      posCode: posCode == freezed ? _value.posCode : posCode as String,
      token: token == freezed ? _value.token : token as String,
      provisionalTkn: provisionalTkn == freezed
          ? _value.provisionalTkn
          : provisionalTkn as String,
      tokenExpiration: tokenExpiration == freezed
          ? _value.tokenExpiration
          : tokenExpiration as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {this.displayName,
      this.email,
      this.userTag,
      this.subsidary,
      this.userCode,
      this.salesRepCode,
      this.test,
      this.posCode,
      this.token,
      this.provisionalTkn,
      this.tokenExpiration});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String displayName;
  @override
  final String email;
  @override
  final String userTag;
  @override
  final String subsidary;
  @override
  final String userCode;
  @override
  final String salesRepCode;
  @override
  final bool test;
  @override
  final String posCode;
  @override
  final String token;
  @override
  final String provisionalTkn;
  @override
  final DateTime tokenExpiration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(displayName: $displayName, email: $email, userTag: $userTag, subsidary: $subsidary, userCode: $userCode, salesRepCode: $salesRepCode, test: $test, posCode: $posCode, token: $token, provisionalTkn: $provisionalTkn, tokenExpiration: $tokenExpiration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('userTag', userTag))
      ..add(DiagnosticsProperty('subsidary', subsidary))
      ..add(DiagnosticsProperty('userCode', userCode))
      ..add(DiagnosticsProperty('salesRepCode', salesRepCode))
      ..add(DiagnosticsProperty('test', test))
      ..add(DiagnosticsProperty('posCode', posCode))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('provisionalTkn', provisionalTkn))
      ..add(DiagnosticsProperty('tokenExpiration', tokenExpiration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userTag, userTag) ||
                const DeepCollectionEquality()
                    .equals(other.userTag, userTag)) &&
            (identical(other.subsidary, subsidary) ||
                const DeepCollectionEquality()
                    .equals(other.subsidary, subsidary)) &&
            (identical(other.userCode, userCode) ||
                const DeepCollectionEquality()
                    .equals(other.userCode, userCode)) &&
            (identical(other.salesRepCode, salesRepCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesRepCode, salesRepCode)) &&
            (identical(other.test, test) ||
                const DeepCollectionEquality().equals(other.test, test)) &&
            (identical(other.posCode, posCode) ||
                const DeepCollectionEquality()
                    .equals(other.posCode, posCode)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.provisionalTkn, provisionalTkn) ||
                const DeepCollectionEquality()
                    .equals(other.provisionalTkn, provisionalTkn)) &&
            (identical(other.tokenExpiration, tokenExpiration) ||
                const DeepCollectionEquality()
                    .equals(other.tokenExpiration, tokenExpiration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userTag) ^
      const DeepCollectionEquality().hash(subsidary) ^
      const DeepCollectionEquality().hash(userCode) ^
      const DeepCollectionEquality().hash(salesRepCode) ^
      const DeepCollectionEquality().hash(test) ^
      const DeepCollectionEquality().hash(posCode) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(provisionalTkn) ^
      const DeepCollectionEquality().hash(tokenExpiration);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {String displayName,
      String email,
      String userTag,
      String subsidary,
      String userCode,
      String salesRepCode,
      bool test,
      String posCode,
      String token,
      String provisionalTkn,
      DateTime tokenExpiration}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get displayName;
  @override
  String get email;
  @override
  String get userTag;
  @override
  String get subsidary;
  @override
  String get userCode;
  @override
  String get salesRepCode;
  @override
  bool get test;
  @override
  String get posCode;
  @override
  String get token;
  @override
  String get provisionalTkn;
  @override
  DateTime get tokenExpiration;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
