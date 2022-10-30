import 'package:dartz/dartz.dart';
import 'package:zunote/core/data/failure.dart';
import 'package:zunote/features/auth/domain/repository/auth_repository.dart';

class SignIn {
  final AuthRepository repository;

  SignIn(this.repository);

  Future<Either<Failure, bool>> execute(String email, password) {
    return repository.signInWithEmailAndPassword(email, password);
  }
}
