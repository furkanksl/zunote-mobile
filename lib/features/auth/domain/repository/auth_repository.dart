import 'package:dartz/dartz.dart';

import 'package:zunote/core/data/failure.dart';
import 'package:zunote/core/enum/form_type_enum.dart';
import 'package:zunote/features/auth/data/models/form_checker_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> signInWithEmailAndPassword(String email, String password);

  Future<Either<Failure, bool>> signUpWithEmailAndPassword(String email, String password);

  Future<Either<Failure, bool>> signOut();

  FormCheckerModel checkForm({
    required FORM_TYPE formType,
    required String email,
    required String password,
    String? passwordAgain,
  });
}
