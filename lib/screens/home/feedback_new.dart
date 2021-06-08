import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/feedbacksmodel.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:newproject/screens/home/displayfeedbacks.dart';
import 'package:newproject/screens/home/manage_form.dart';
import 'package:newproject/screens/home/setting_form.dart';
import 'package:newproject/screens/home/vehicle_list.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/services/database.dart';
import 'package:provider/provider.dart';

class  FeedbackNew extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  final AuthServices _auth= AuthServices();

  @override
  Widget build(BuildContext context) {

    return StreamProvider<List<Feedbacksmodel>>.value(
        value: DatabaseService(uid: '').feedbacks,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('Toyota '),
            elevation: 0.0,
            actions: <Widget>[

            ],
          ),
          body: Displayfeedbacks(),
        )
    );
  }
}