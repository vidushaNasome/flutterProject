import 'package:flutter/material.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/shared/constants.dart';
import 'package:newproject/shared/loadding.dart';

class Register extends StatefulWidget {
  //const Register({Key key}) : super(key: key);
  final Function toggleView;
  Register({required this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
            key: _formkey,
            child: Column(
              children: <Widget>[
                 Container(
               child: Stack(
                 children: <Widget>[
                   Container(
                     padding:EdgeInsets.fromLTRB(0.0,110.0, 0.0,0.0),
                     child: Text(
                       'Register',
                       style: TextStyle(
                         fontSize: 40.0,fontWeight: FontWeight.bold)
                       ),
                     ),
                 ],
               ),
             ),
                SizedBox(height:20.0),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Email'),
                  validator: (val)=>val!.isEmpty?'Enter an Email':null,
                  onChanged: (val){
                    setState(() => email = val );
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  decoration: textInputDecoration.copyWith(hintText: 'Password'),
                  validator: (val)=>val!.length <6 ?'Enter Password 6+ chars long ':null,
                  onChanged: (val){
                    setState(() => password = val );
                  },
                ),
                SizedBox(height: 40.0),
                 Container(
                  height:50.0,
                  width: 200.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    
                    color: Colors.yellow[700],
                    elevation: 7.0,
                    child: RaisedButton(
                       color: Colors.black12,
                       child: Text(
                      'Register',
                         style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Monster')
                  ),
                  onPressed: () async
                  {
                    try{
                    if(_formkey.currentState!.validate()){
                      //print(email);
                      //print(password);
                      setState(() {
                        loading=true;
                      });
                      dynamic result = await _auth.registerwithemailwithpassword(email, password);
                      if(result ==null){
                        //setState(() =>error = 'Error');
                        setState(() {
                          loading=false;
                          error = 'Could not Sign In with these credentials.';
                        });
                      }else{

                      }
                    }}catch(e){

                    }
                  },
                ),
                  ),
                 ),

                SizedBox(height: 12.0),
                Text(
                  error,
                  style:TextStyle(color:Colors.red,fontSize: 14.0)
                ),
              ],
            ),

          )
      ),
    );
  }
}
