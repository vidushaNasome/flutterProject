import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newproject/models/user.dart';
import 'package:newproject/services/database.dart';

import 'dart:math';
Random random = new Random();

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

  Future registerwithemailwithpassword(String email, String password) async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      //await DatabaseService(uid: user.uid).updateUserdata('1,000,000', 'aaa', 'bbb');
      return _userfromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  Future signinwithemailwithpassword(String email, String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userfromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  Future addVehicle(String type, String color, String url, String price) async {


    int randomNumber = random.nextInt(100);
    String id = randomNumber.toString();

    try{
      Firestore.instance.collection('allvehicals').document().setData({
          'ID' : id,
          'type': type,
          'color':color,
          'price':price,
          'url':url,
        });

      return 9;
      } catch(e){
      print(e.toString());
      return null;
    }
  }
}