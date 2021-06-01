import 'package:flutter/material.dart';
import 'package:newproject/screens/authenticate/authenticate.dart';
import 'package:newproject/screens/home/home.dart';
import 'package:newproject/screens/wrapper.dart';
import 'package:newproject/services/auth.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServices().user,
        child: MaterialApp(
          home: Wrapper(),
      ),
    );
  }

}


