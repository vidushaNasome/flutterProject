import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newproject/services/auth.dart';

class SignIn extends StatefulWidget {
  //const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   final AuthServices _auth= AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Sign In to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign In'),
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if(result==null){
              print('no');
            }else{
              print(result.uid);
            }
            },
        )
      ),
    );
  }
}
