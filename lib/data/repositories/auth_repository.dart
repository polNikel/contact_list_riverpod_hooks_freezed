import 'package:contact_list_riverpod_hooks_freezed/core/error/exceptions.dart';
import 'package:contact_list_riverpod_hooks_freezed/core/error/failures.dart';
import 'package:contact_list_riverpod_hooks_freezed/data/datasources/auth_local_data_source.dart';
import 'package:contact_list_riverpod_hooks_freezed/data/datasources/auth_remote_data_source.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/user.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider =
    Provider.autoDispose<AuthRepository>((ref) => AuthRepositoryImpl(ref.read));

abstract class AuthRepository {
  Future<Either<Failure, User>> logIn(
      {@required String username, @required String password});

  Future<Either<Failure, void>> logOut();

  Future<Either<Failure, User>> getSignedInUser();

  Future<Either<Failure, String>> renewToken();
}

class AuthRepositoryImpl implements AuthRepository {
  final Reader read;
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl(this.read)
      : authRemoteDataSource = read(authRemoteDataSourceProvider),
        authLocalDataSource = read(authLocalDataSourceProvider);

  Future<Either<Failure, User>> logIn(
      {@required String username, @required String password}) async {
    try {
      final user = await authRemoteDataSource.logIn(
          username: username, password: password);
      authLocalDataSource.setSignedInUser(user: user);
      return Right(user);
    } on ServerException {
      return Left(ServerFailure());
    } on UnauthorisedException {
      return Left(UnauthorisedFailure());
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> logOut() async {
    try {
      await authLocalDataSource.signOut();
      return Right(null);
    } on CacheException {
      return Left(CacheFailure());
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(errorMessage: e.errorMessage));
    }
  }

  @override
  Future<Either<Failure, User>> getSignedInUser() async {
    try {
      final user = await authLocalDataSource.getSignedInUser();
      return Right(user);
    } on ServerException {
      return Left(ServerFailure());
    } on UnauthorisedException {
      return Left(UnauthorisedFailure());
    } on CacheException {
      return Left(CacheFailure());
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(errorMessage: e.errorMessage));
    }
  }

  @override
  Future<Either<Failure, String>> renewToken() async {
    try {
      final user = await authLocalDataSource.getSignedInUser();

      final result = await authRemoteDataSource.renewToken(user: user);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } on UnauthorisedException {
      return Left(UnauthorisedFailure());
    } on CacheException {
      return Left(CacheFailure());
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(errorMessage: e.errorMessage));
    }
  }
}
