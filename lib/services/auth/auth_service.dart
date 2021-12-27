
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _auth;

  AuthService()
      : _auth = FirebaseAuth.instance;


  Future signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  Future<bool> isSignedIn() async {
    final currentUser = await _auth.currentUser;
    return currentUser != null;
  }

  String? getUserEmail() {
    return _auth.currentUser!.email;
  }

  Future<User?> signInUsingEmailPassword(String email, String password) async {
    User? user;
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
      }
    }
    return user;
  }

  Future<void> signOut() async {
    return await _auth.signOut();
  }

}
