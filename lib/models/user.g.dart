// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    displayName: json['DISPLAY_NAME'] as String,
    email: json['API_USER'] as String,
    userTag: json['USER_TAG'] as String,
    subsidary: json['FILIAL'] as String,
    userCode: json['FILAIL'] as String,
    salesRepCode: json['COD_REP'] as String,
    test: json['TEST'] as bool,
    posCode: json['NUM_EMPL'] as String,
    token: json['NIKTKN'] as String,
    provisionalTkn: json['PROVISIONAL_TKN'] as String,
    tokenExpiration: json['NIKTKN_EXPIRATION'] == null
        ? null
        : DateTime.parse(json['NIKTKN_EXPIRATION'] as String),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'DISPLAY_NAME': instance.displayName,
      'API_USER': instance.email,
      'USER_TAG': instance.userTag,
      'FILIAL': instance.subsidary,
      'FILIAL': instance.userCode,
      'COD_REP': instance.salesRepCode,
      'TEST': instance.test,
      'NUM_EMPL': instance.posCode,
      'NIKTKN': instance.token,
      'PROVISIONAL_TKN': instance.provisionalTkn,
      'NIKTKN_EXPIRATION': instance.tokenExpiration?.toIso8601String(),
    };
