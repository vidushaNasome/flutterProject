import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:newproject/screens/home/vehicle_list.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/services/database.dart';
import 'package:provider/provider.dart';

class  home extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  final AuthServices _auth= AuthServices();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Vehical>>.value(
      value: DatabaseService(uid: '').vehicles,
      child: Scaffold(
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
        ],
      ),
        body: VehicleList(),
    )
    );
  }
}
