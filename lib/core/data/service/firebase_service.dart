// ignore_for_file: avoid_print
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:zunote/core/data/exception.dart';
import 'package:zunote/core/data/service/utility_service.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UtilityService _utilityService = UtilityService();

  Stream<User?> get authStateChange => _auth.authStateChanges();

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);

      return true;
    } catch (e) {
      String message = _utilityService.isInlcudeFirebaseErrorCode(e.toString());
      print(e);

      return throw AuthException(message);
    }
  }

  Future<bool> signUpWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return true;
    } catch (e) {
      if (e.toString().contains('email-already-in-use')) {
        print('This email address is already in use AMK');
        return throw AuthException('This email address is already in use!');
      } else {
        return throw AuthException(e.toString());
      }
    }
  }

  Future<bool> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    try {
      await _auth.signInWithCredential(credential);

      return true;
    } on FirebaseAuthException catch (e) {
      print(e);

      return false;
    }
  }

  Future<bool> signOut() async {
    try {
      await _auth.signOut();

      return true;
    } catch (e) {
      return throw AuthException(e.toString());
    }
  }
}
