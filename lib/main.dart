import 'package:flutter/material.dart';
import 'package:newproject/screens/home/home.dart';
import 'package:newproject/screens/wrapper.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: home(),
      );
  }
}

