import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'contact_list.freezed.dart';
part 'contact_list.g.dart';

@freezed
abstract class ContactList with _$ContactList {
  const factory ContactList({
    String id,
    String contactType,
    String companyName,
    String contactName,
    String phone,
    String email,
    String status,
  }) = _ContactList;

  factory ContactList.fromJson(Map<String, dynamic> json) =>
      _$ContactListFromJson(json);
  Map<String, dynamic> toJson() => toJson();
}
