import 'package:contact_list_riverpod_hooks_freezed/core/error/exceptions.dart';
import 'package:contact_list_riverpod_hooks_freezed/core/error/failures.dart';
import 'package:contact_list_riverpod_hooks_freezed/data/datasources/auth_local_data_source.dart';
import 'package:contact_list_riverpod_hooks_freezed/data/datasources/contact_remote_data_source.dart';
import 'package:contact_list_riverpod_hooks_freezed/models/contact_list.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final contactRepositoryProvider = Provider.autoDispose<ContactRepository>(
    (ref) => ContactRepositoryImpl(ref.read));

abstract class ContactRepository {
  Future<Either<Failure, List<ContactList>>> getContacts(
      {String query, int page});

  Future<Either<Failure, List<ContactList>>> loadNextContacts({
    int page,
    String query,
  });
}

class ContactRepositoryImpl implements ContactRepository {
  final Reader read;
  final AuthLocalDataSource authLocalDataSource;
  final ContactRemoteDataSource contactRemoteDataSource;

  ContactRepositoryImpl(this.read)
      : authLocalDataSource = read(authLocalDataSourceProvider),
        contactRemoteDataSource = read(contactRemoteDataSourceProvider);

  @override
  Future<Either<Failure, List<ContactList>>> getContacts(
      {String query, int page}) async {
    try {
      final user = await authLocalDataSource.getSignedInUser();
      final contacts = await contactRemoteDataSource.getContacts(
          user: user, query: query, page: page);
      return Right(contacts);
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
  Future<Either<Failure, List<ContactList>>> loadNextContacts({
    int page,
    String query,
  }) async {
    try {
      final user = await authLocalDataSource.getSignedInUser();
      final result = await contactRemoteDataSource.loadNextContacts(
          page: page, query: query, user: user);
      return Right(result);
    } on CacheException {
      return Left(CacheFailure());
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(errorMessage: e.errorMessage));
    }
  }
}
