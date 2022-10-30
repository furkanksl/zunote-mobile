import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:zunote/core/data/exception.dart';
import 'package:zunote/core/data/failure.dart';
import 'package:zunote/core/enum/form_type_enum.dart';
import 'package:zunote/features/auth/data/models/form_checker_model.dart';
import 'package:zunote/features/auth/data/service/auth_service.dart';
import 'package:zunote/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthService authService;

  AuthRepositoryImpl({
    required this.authService,
  });

  @override
  Future<Either<Failure, bool>> signInWithEmailAndPassword(String email, String password) async {
    try {
      final result = await authService.signInWithEmailAndPassword(email: email, password: password);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure('Server error!'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network!'));
    } on AuthException catch (e) {
      return Left(FirebaseAuthFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> signUpWithEmailAndPassword(String email, String password) async {
    try {
      final result = await authService.signUpWithEmailAndPassword(email: email, password: password);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on AuthException catch (e) {
      return Left(FirebaseAuthFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      final result = await authService.signOut();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  FormCheckerModel checkForm({
    required FORM_TYPE formType,
    required String email,
    required String password,
    String? passwordAgain,
  }) {
    return authService.checkForm(
      formType: formType,
      email: email,
      password: password,
      passwordAgain: passwordAgain ?? "",
    );
  }
}
