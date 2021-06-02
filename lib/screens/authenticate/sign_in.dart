import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/home/home.dart';
import 'package:newproject/services/auth.dart';

class SignIn extends StatefulWidget {
  //const SignIn({Key key}) : super(key: key);
  final Function toggleView;
  SignIn({required this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   final AuthServices _auth= AuthServices();

   String email='';
   String password="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[50],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Sign In to Toyota'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              // ignore: unnecessary_statements
              widget.toggleView();
            },
            icon: Icon(Icons.person),
            label: Text('Register'),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height:20.0),
              TextFormField(
                onChanged: (val){
                  setState(() => email = val );
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                onChanged: (val){
                  setState(() => password = val );
                },
              ),
              RaisedButton(
                color: Colors.black12,
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white)

                ),
                onPressed: () async
                {
                  print(email);
                  print(password);
                },
              )
            ],
          ),

        )
      ),
    );
  }
}
