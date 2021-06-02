import 'package:flutter/material.dart';
import 'package:newproject/services/auth.dart';

class Register extends StatefulWidget {
  //const Register({Key key}) : super(key: key);
  final Function toggleView;
  Register({required this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthServices _auth= AuthServices();

  String email='';
  String password="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[50],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Sign Up to Toyota'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              widget.toggleView();
            },
            icon: Icon(Icons.person),
            label: Text('Sign In'),

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
                      'Register',
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
