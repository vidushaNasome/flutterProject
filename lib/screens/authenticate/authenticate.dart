import 'package:flutter/material.dart';
import 'package:newproject/screens/authenticate/register.dart';
import 'package:newproject/screens/authenticate/sign_in.dart';
class Authenticate extends StatefulWidget {
  //const Authenticate({Key key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignin =true;
  void toggleview(){
    setState(() =>showSignin=!showSignin);
  }
  @override
  Widget build(BuildContext context) {
    if(showSignin){
      return Container(
        child: SignIn(toggleView:toggleview),
      );
    }else{
      return Container(
        child: Register(toggleView:toggleview),
      );
    }
    /*return Container(
      child: Register(),
    );*/
  }
}

