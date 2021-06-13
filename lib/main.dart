import 'package:flutter/material.dart';
import 'package:newproject/screens/authenticate/authenticate.dart';
import 'package:newproject/screens/home/home.dart';
import 'package:newproject/screens/wrapper.dart';
import 'package:newproject/services/auth.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';

import 'models/user.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //print('inside main');
    return StreamProvider<User>.value(
      value: AuthServices().user,
        child: MaterialApp(
            theme: ThemeData(
            appBarTheme: AppBarTheme(
            color: Color(0xFFFFAB00),
            )
            ),
          debugShowCheckedModeBanner: false,
          home: Wrapper(),
      ),
    );
  }

}


//flutter run --no-sound-null-safety