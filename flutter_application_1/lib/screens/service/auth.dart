import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/screens/service/firestore.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  //create user model base on firebase user

  //Stream
  Stream<User?> get user {
    return _auth.authStateChanges();
  }

  //sign in anoimous

  signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email & pass

  Future signInWithEmailAndPass(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  //regrister with email & pass

  Future regristerWithEmailAndPass(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;
      //when new user regris,user will have an initial data

      await DataBaseService(uid: user.uid).setNewData('', 100, '0');

      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  //sign out
  Future signOut() async {
    try {
      await _auth.signOut();
      print("signout successfully");
    } catch (e) {
      return null;
    }
  }
}
