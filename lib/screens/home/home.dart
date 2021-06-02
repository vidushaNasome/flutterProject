import 'package:flutter/material.dart';
import 'package:newproject/services/auth.dart';

class  home extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  final AuthServices _auth= AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Toyota'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async{
              await _auth.signout();
            },
            icon: Icon(Icons.person),
            label: Text('logout'),

          )
        ]
      ),
    );
  }
}
