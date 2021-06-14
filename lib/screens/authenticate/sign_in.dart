import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/home/home.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/shared/constants.dart';
import 'package:newproject/shared/loadding.dart';

class SignIn extends StatefulWidget {
  //const SignIn({Key key}) : super(key: key);
  final Function toggleView;
  SignIn({required this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   final AuthServices _auth= AuthServices();
   final _formkey = GlobalKey<FormState>();
   bool loading = false;


   String email='';
   String password="";
   String error="";

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() :Scaffold(
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
          key: _formkey,
          child: Column(
            children: <Widget>[
    Container(
               child: Stack(
                 children: <Widget>[
                   Container(
                     padding:EdgeInsets.fromLTRB(0.0,110.0, 0.0,0.0),
                     child: Text(
                       'Signin',
                       style: TextStyle(
                         fontSize: 40.0,fontWeight: FontWeight.bold)
                       ),
                     ),
                 ],
               ),
             ),
              SizedBox(height:20.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent
                        )
                    )
                ),
                validator: (val)=>val!.isEmpty?'Enter an Email':null,
                onChanged: (val){
                  setState(() => email = val );
                },
              ),
              SizedBox(height: 40.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Passaword',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent
                        )
                    )
                ),
                validator: (val)=>val!.length <6 ?'Enter Password 6+ chars long ':null,
                onChanged: (val){
                  setState(() => password = val );
                },
              ),
                Container(
                     alignment: Alignment(1.0,0.0),
                     padding:EdgeInsets.only(top:15.0,left:20.0),
                     child:InkWell(
                       child:Text('Fogot Password?',
                       style: TextStyle(
                         color: Colors.green[300],
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Montserrat',
                         decoration: TextDecoration.underline
                         )
                      ),
                  ) ,
               ) ,
              SizedBox(height: 40.0),
              Container(
                  height:50.0,
                  width: 200.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.grey,
                    color: Colors.yellow[700],
                    elevation: 7.0,
                    child: RaisedButton(
                    color: Colors.black12,
                    child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Monster')

                    ),
                    onPressed: () async
                    {
                      try{
                        if(_formkey.currentState!.validate()){
                          setState(() {
                            loading=true;
                          });
                          print('valid');
                          //print(password);
                          dynamic result = await _auth.signinwithemailwithpassword(email, password);
                          if(result ==null){
                            //setState(() =>error = 'Could not Sign In with these credentials.');
                            setState(() {
                              loading=false;
                              error = 'Could not Sign In with these credentials.';
                            });
                          }else{

                          }
                        }}catch(e){

                      }
                    },
                  )

                  )
              ),

            ],
          ),

        )
      ),
    );
  }
}
