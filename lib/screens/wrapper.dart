import 'package:flutter/material.dart';
import 'package:newproject/main.dart';
import 'package:newproject/models/user.dart';
import 'package:newproject/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';
class  Wrapper extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // ignore: unnecessary_null_comparison
    if(user == null){
      print('authentication....');
      return Authenticate();
    }else{
      print('home......');
      return home();
    }
  }
}
