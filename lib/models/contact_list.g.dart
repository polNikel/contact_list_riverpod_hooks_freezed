// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactList _$_$_ContactListFromJson(Map<String, dynamic> json) {
  return _$_ContactList(
    id: json['COD_INST'] as String,
    contactType: json['NOMBRE_TIPO'] as String,
    companyName: json['NOMB_INST'] as String,
    contactName: json['NOMB_CONTACTO'] as String,
    phone: json['TELF_CONTACTO'] as String,
    email: json['EMAIL_CONTACTO'] as String,
    status: json['NOM_ESTADO'] as String,
  );
}

Map<String, dynamic> _$_$_ContactListToJson(_$_ContactList instance) =>
    <String, dynamic>{
      'COD_INST': instance.id,
      'NOMBRE_TIPO': instance.contactType,
      'NOMB_INST': instance.companyName,
      'NOMB_CONTACTO': instance.contactName,
      'EMAIL_CONTACTO': instance.phone,
      'EMAIL_CONTACTO': instance.email,
      'NOM_ESTADO': instance.status,
    };
