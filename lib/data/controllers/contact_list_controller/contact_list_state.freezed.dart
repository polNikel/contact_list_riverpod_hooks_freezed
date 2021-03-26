// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactListStateTearOff {
  const _$ContactListStateTearOff();

// ignore: unused_element
  _ContactListState call(
      {int page = 0,
      List<ContactList> contacts,
      String query = "",
      bool isLoading = true,
      bool isLoadMoreError = false,
      bool isFinalPage = false,
      String errorMessage = ""}) {
    return _ContactListState(
      page: page,
      contacts: contacts,
      query: query,
      isLoading: isLoading,
      isLoadMoreError: isLoadMoreError,
      isFinalPage: isFinalPage,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContactListState = _$ContactListStateTearOff();

/// @nodoc
mixin _$ContactListState {
  int get page;
  List<ContactList> get contacts;
  String get query;
  bool get isLoading;
  bool get isLoadMoreError;
  bool get isFinalPage;
  String get errorMessage;

  @JsonKey(ignore: true)
  $ContactListStateCopyWith<ContactListState> get copyWith;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res>;
  $Res call(
      {int page,
      List<ContactList> contacts,
      String query,
      bool isLoading,
      bool isLoadMoreError,
      bool isFinalPage,
      String errorMessage});
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  final ContactListState _value;
  // ignore: unused_field
  final $Res Function(ContactListState) _then;

  @override
  $Res call({
    Object page = freezed,
    Object contacts = freezed,
    Object query = freezed,
    Object isLoading = freezed,
    Object isLoadMoreError = freezed,
    Object isFinalPage = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
      contacts:
          contacts == freezed ? _value.contacts : contacts as List<ContactList>,
      query: query == freezed ? _value.query : query as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoadMoreError: isLoadMoreError == freezed
          ? _value.isLoadMoreError
          : isLoadMoreError as bool,
      isFinalPage:
          isFinalPage == freezed ? _value.isFinalPage : isFinalPage as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactListStateCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$ContactListStateCopyWith(
          _ContactListState value, $Res Function(_ContactListState) then) =
      __$ContactListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      List<ContactList> contacts,
      String query,
      bool isLoading,
      bool isLoadMoreError,
      bool isFinalPage,
      String errorMessage});
}

/// @nodoc
class __$ContactListStateCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res>
    implements _$ContactListStateCopyWith<$Res> {
  __$ContactListStateCopyWithImpl(
      _ContactListState _value, $Res Function(_ContactListState) _then)
      : super(_value, (v) => _then(v as _ContactListState));

  @override
  _ContactListState get _value => super._value as _ContactListState;

  @override
  $Res call({
    Object page = freezed,
    Object contacts = freezed,
    Object query = freezed,
    Object isLoading = freezed,
    Object isLoadMoreError = freezed,
    Object isFinalPage = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_ContactListState(
      page: page == freezed ? _value.page : page as int,
      contacts:
          contacts == freezed ? _value.contacts : contacts as List<ContactList>,
      query: query == freezed ? _value.query : query as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoadMoreError: isLoadMoreError == freezed
          ? _value.isLoadMoreError
          : isLoadMoreError as bool,
      isFinalPage:
          isFinalPage == freezed ? _value.isFinalPage : isFinalPage as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ContactListState extends _ContactListState {
  const _$_ContactListState(
      {this.page = 0,
      this.contacts,
      this.query = "",
      this.isLoading = true,
      this.isLoadMoreError = false,
      this.isFinalPage = false,
      this.errorMessage = ""})
      : assert(page != null),
        assert(query != null),
        assert(isLoading != null),
        assert(isLoadMoreError != null),
        assert(isFinalPage != null),
        assert(errorMessage != null),
        super._();

  @JsonKey(defaultValue: 0)
  @override
  final int page;
  @override
  final List<ContactList> contacts;
  @JsonKey(defaultValue: "")
  @override
  final String query;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadMoreError;
  @JsonKey(defaultValue: false)
  @override
  final bool isFinalPage;
  @JsonKey(defaultValue: "")
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContactListState(page: $page, contacts: $contacts, query: $query, isLoading: $isLoading, isLoadMoreError: $isLoadMoreError, isFinalPage: $isFinalPage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactListState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoadMoreError, isLoadMoreError) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadMoreError, isLoadMoreError)) &&
            (identical(other.isFinalPage, isFinalPage) ||
                const DeepCollectionEquality()
                    .equals(other.isFinalPage, isFinalPage)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(contacts) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoadMoreError) ^
      const DeepCollectionEquality().hash(isFinalPage) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ContactListStateCopyWith<_ContactListState> get copyWith =>
      __$ContactListStateCopyWithImpl<_ContactListState>(this, _$identity);
}

abstract class _ContactListState extends ContactListState {
  const _ContactListState._() : super._();
  const factory _ContactListState(
      {int page,
      List<ContactList> contacts,
      String query,
      bool isLoading,
      bool isLoadMoreError,
      bool isFinalPage,
      String errorMessage}) = _$_ContactListState;

  @override
  int get page;
  @override
  List<ContactList> get contacts;
  @override
  String get query;
  @override
  bool get isLoading;
  @override
  bool get isLoadMoreError;
  @override
  bool get isFinalPage;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ContactListStateCopyWith<_ContactListState> get copyWith;
}
