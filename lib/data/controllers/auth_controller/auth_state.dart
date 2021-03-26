import 'package:contact_list_riverpod_hooks_freezed/core/error/failures.dart';
import 'package:contact_list_riverpod_hooks_freezed/data/repositories/auth_repository.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meta/meta.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    User user,
    @Default(true) bool isLoading,
    String errorMessage,
  }) = _AuthState;

  const AuthState._();
}

final authenticationStateNotifierProvider =
    StateNotifierProvider<AuthenticationStateNotifier>(
        (ref) => AuthenticationStateNotifier(ref.read));

class AuthenticationStateNotifier extends StateNotifier<AuthState> {
  final Reader read;

  AuthenticationStateNotifier(this.read) : super(AuthState()) {
    getSignedInUser();
  }

  Future<void> logOut() async {
    final _authenticationUseCases = read(authRepositoryProvider);
    state = state.copyWith(isLoading: true);
    final result = await _authenticationUseCases.logOut();
    result.fold(
      (failure) => state = state.copyWith(
          isLoading: false, errorMessage: mapFailureToMessage(failure)),
      (_) => state = state.copyWith(isLoading: false),
    );
  }

  Future<void> logIn(
      {@required String username, @required String password}) async {
    final _authenticationUseCases = read(authRepositoryProvider);
    state = state.copyWith(isLoading: true);
    final result = await _authenticationUseCases.logIn(
      username: username,
      password: password,
    );
    result.fold(
      (failure) => state = state.copyWith(
          isLoading: false, errorMessage: mapFailureToMessage(failure)),
      (user) => state = state.copyWith(user: user),
    );
  }

  Future<void> getSignedInUser() async {
    final _authenticationUseCases = read(authRepositoryProvider);
    state = state.copyWith(isLoading: true);
    final result = await _authenticationUseCases.getSignedInUser();
    result.fold(
      (failure) => state = state.copyWith(
          isLoading: false, errorMessage: mapFailureToMessage(failure)),
      (user) => state = state.copyWith(user: user),
    );
  }
}
