import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<bool> signUp(String email, String password) async {
    return await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => value.user != null)
        .catchError((error) {
      if (error is FirebaseAuthException) {
        print('error is ${error.code}');
      }
    });
  }

  Future<bool> login(String email, String password) async {
    return await firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => true)
        .catchError((error) => false);
  }
}
