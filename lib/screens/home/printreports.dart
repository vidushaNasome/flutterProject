import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/report.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:newproject/screens/home/allreports.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/services/database.dart';
import 'package:provider/provider.dart';

class  Print extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  final AuthServices _auth= AuthServices();

  @override
  Widget build(BuildContext context) {

    return StreamProvider<List<Report>>.value(
        value: DatabaseService(uid: '').treports,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('True Reports'),
            elevation: 0.0,
            actions: <Widget>[

            ],
          ),
          body: Container(
              child: AllReports()
          ),
        )
    );
  }
}