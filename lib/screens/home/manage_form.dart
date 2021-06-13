import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newproject/screens/home/Addvehicles.dart';
import 'package:newproject/screens/home/feedbacks.dart';
import 'package:newproject/screens/home/truereport.dart';
import 'package:newproject/shared/constants.dart';
class ManageForm extends StatefulWidget {
  //const SettingsForm({Key key}) : super(key: key);

  @override
  _ManageFormState createState() => _ManageFormState();
}

class _ManageFormState extends State<ManageForm> {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    void _showSettingpanel(){
      showModalBottomSheet(
        context: context,
        builder:(context){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
            child: Addvehicles(),
          );
        } ,
      );
    }

    void _showFeedbackspanel(){
      showModalBottomSheet(
        context: context,
        builder:(context){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
            child: Feedbacks(),
          );
        } ,
      );
    }

    void _showReportpanel(){
      showModalBottomSheet(
        context: context,
        builder:(context){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
            child: TrueReport(),
          );
        } ,
      );
    }

    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 40,
              foreground: Paint()
                ..style = PaintingStyle.fill
                ..strokeWidth = 1
                ..color = Colors.amber[600]!,
                decoration: TextDecoration.none,
                  )

          ),

          SizedBox(height: 20.0),
      ButtonTheme(
        minWidth: 250.0,
        height: 120.0,
        child:
          RaisedButton(
            onPressed: ()=>_showSettingpanel(),
            child: Text('Add Vehicles and Details'),
            color: Colors.yellow[900],
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            splashColor: Colors.grey,
          ),
      ),
          SizedBox(height: 20.0),
      ButtonTheme(
        minWidth: 250.0,
        height: 120.0,
        child:
          RaisedButton(
            onPressed: ()=>_showReportpanel(),
            child: Text('True Reports'),
            color: Colors.yellow[900],
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            splashColor: Colors.grey,
          ),),
          SizedBox(height: 20.0),
          ButtonTheme(
            minWidth: 250.0,
            height: 120.0,
            child:
            RaisedButton(
              onPressed: ()=>_showFeedbackspanel(),
              child: Text('Add Complaints and Feedbacks'),
              color: Colors.yellow[900],
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
              splashColor: Colors.amber,

            ),
          ),
        ],
      ),

    );
  }
}
