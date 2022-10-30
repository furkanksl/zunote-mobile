import 'package:dartz/dartz.dart';
import 'package:zunote/core/data/failure.dart';
import 'package:zunote/features/auth/domain/repository/auth_repository.dart';

class SignUp {
  final AuthRepository repository;

  SignUp(this.repository);

  Future<Either<Failure, bool>> execute(String email, password) {
    return repository.signUpWithEmailAndPassword(email, password);
  }
}
