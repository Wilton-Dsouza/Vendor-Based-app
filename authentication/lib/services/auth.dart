import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/services/database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on FirebaseUser (check user.dart)
  //return type is of User class which is defined in user.dart
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change user stream (used to keep track whether the user
  //is signed in or not
//  Stream<FirebaseUser> get user {  //'user' name can be anything
//    return _auth.onAuthStateChanged;
//  }
  //the above code returns FirebaseUser but we want the User instance
  //defined by us. So:-
  Stream<User> get user {
    //will return User object if user signs in and null if user signs out
    return _auth.onAuthStateChanged
//        .map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser); //compact version of above
  }

  //sign in anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and pass
  Future signInWithEmailAndPassword(String email, String password) async {
    //user-defined name
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          //built-in firebase method
          email: email.trim(),
          password: password.trim());
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register with email and pass
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      FirebaseUser user = result.user;
      // create a new document for the user with their uid (for linking)
      await DatabaseService(uid: user.uid).updateUserData('0', 'Tommy', 900);
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    //this signOut is a user-defined name
    try {
      return await _auth.signOut(); //built-in signOut
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
