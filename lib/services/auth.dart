import 'package:firebase_auth/firebase_auth.dart';
import 'package:newproject/models/user.dart';

class AuthServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _userfromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null ;
  }

  Stream<User?> get user{
    return _auth.onAuthStateChanged
     //.map((FirebaseUser user) => _userfromFirebaseUser(user));
    .map(_userfromFirebaseUser);
  }

  Future signInAnon() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;

      return _userfromFirebaseUser(user);

    }catch(e){
      print(e.toString());
      return null;
    }
  }

  Future signout() async{
    try {
      return await _auth.signOut();
    }catch(e){

    }
  }
}