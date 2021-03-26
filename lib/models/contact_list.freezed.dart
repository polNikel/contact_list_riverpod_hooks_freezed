// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ContactList _$ContactListFromJson(Map<String, dynamic> json) {
  return _ContactList.fromJson(json);
}

/// @nodoc
class _$ContactListTearOff {
  const _$ContactListTearOff();

// ignore: unused_element
  _ContactList call(
      {String id,
      String contactType,
      String companyName,
      String contactName,
      String phone,
      String email,
      String status}) {
    return _ContactList(
      id: id,
      contactType: contactType,
      companyName: companyName,
      contactName: contactName,
      phone: phone,
      email: email,
      status: status,
    );
  }

// ignore: unused_element
  ContactList fromJson(Map<String, Object> json) {
    return ContactList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ContactList = _$ContactListTearOff();

/// @nodoc
mixin _$ContactList {
  String get id;
  String get contactType;
  String get companyName;
  String get contactName;
  String get phone;
  String get email;
  String get status;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ContactListCopyWith<ContactList> get copyWith;
}

/// @nodoc
abstract class $ContactListCopyWith<$Res> {
  factory $ContactListCopyWith(
          ContactList value, $Res Function(ContactList) then) =
      _$ContactListCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String contactType,
      String companyName,
      String contactName,
      String phone,
      String email,
      String status});
}

/// @nodoc
class _$ContactListCopyWithImpl<$Res> implements $ContactListCopyWith<$Res> {
  _$ContactListCopyWithImpl(this._value, this._then);

  final ContactList _value;
  // ignore: unused_field
  final $Res Function(ContactList) _then;

  @override
  $Res call({
    Object id = freezed,
    Object contactType = freezed,
    Object companyName = freezed,
    Object contactName = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      contactType:
          contactType == freezed ? _value.contactType : contactType as String,
      companyName:
          companyName == freezed ? _value.companyName : companyName as String,
      contactName:
          contactName == freezed ? _value.contactName : contactName as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      status: status == freezed ? _value.status : status as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactListCopyWith<$Res>
    implements $ContactListCopyWith<$Res> {
  factory _$ContactListCopyWith(
          _ContactList value, $Res Function(_ContactList) then) =
      __$ContactListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String contactType,
      String companyName,
      String contactName,
      String phone,
      String email,
      String status});
}

/// @nodoc
class __$ContactListCopyWithImpl<$Res> extends _$ContactListCopyWithImpl<$Res>
    implements _$ContactListCopyWith<$Res> {
  __$ContactListCopyWithImpl(
      _ContactList _value, $Res Function(_ContactList) _then)
      : super(_value, (v) => _then(v as _ContactList));

  @override
  _ContactList get _value => super._value as _ContactList;

  @override
  $Res call({
    Object id = freezed,
    Object contactType = freezed,
    Object companyName = freezed,
    Object contactName = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object status = freezed,
  }) {
    return _then(_ContactList(
      id: id == freezed ? _value.id : id as String,
      contactType:
          contactType == freezed ? _value.contactType : contactType as String,
      companyName:
          companyName == freezed ? _value.companyName : companyName as String,
      contactName:
          contactName == freezed ? _value.contactName : contactName as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      status: status == freezed ? _value.status : status as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ContactList with DiagnosticableTreeMixin implements _ContactList {
  const _$_ContactList(
      {this.id,
      this.contactType,
      this.companyName,
      this.contactName,
      this.phone,
      this.email,
      this.status});

  factory _$_ContactList.fromJson(Map<String, dynamic> json) =>
      _$_$_ContactListFromJson(json);

  @override
  final String id;
  @override
  final String contactType;
  @override
  final String companyName;
  @override
  final String contactName;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactList(id: $id, contactType: $contactType, companyName: $companyName, contactName: $contactName, phone: $phone, email: $email, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactList'))
      ..add(DiagnosticsProperty('COD_INST', id))
      ..add(DiagnosticsProperty('NOMBRE_TIPO', contactType))
      ..add(DiagnosticsProperty('NOMB_INST', companyName))
      ..add(DiagnosticsProperty('NOMB_CONTACTO', contactName))
      ..add(DiagnosticsProperty('TELF_CONTACTO', phone))
      ..add(DiagnosticsProperty('EMAIL_CONTACTO', email))
      ..add(DiagnosticsProperty('NOM_ESTADO', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactList &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.contactType, contactType) ||
                const DeepCollectionEquality()
                    .equals(other.contactType, contactType)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.contactName, contactName) ||
                const DeepCollectionEquality()
                    .equals(other.contactName, contactName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(contactType) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(contactName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ContactListCopyWith<_ContactList> get copyWith =>
      __$ContactListCopyWithImpl<_ContactList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContactListToJson(this);
  }
}

abstract class _ContactList implements ContactList {
  const factory _ContactList(
      {String id,
      String contactType,
      String companyName,
      String contactName,
      String phone,
      String email,
      String status}) = _$_ContactList;

  factory _ContactList.fromJson(Map<String, dynamic> json) =
      _$_ContactList.fromJson;

  @override
  String get id;
  @override
  String get contactType;
  @override
  String get companyName;
  @override
  String get contactName;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$ContactListCopyWith<_ContactList> get copyWith;
}
