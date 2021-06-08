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
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Colors.blue[700]!,
                decoration: TextDecoration.none,
                  )

          ),
          SizedBox(height: 20.0),
          RaisedButton(
            onPressed: ()=>_showFeedbackspanel(),
            child: Text('Add Complaints and Feedbacks'),
          ),
          RaisedButton(
            onPressed: ()=>_showSettingpanel(),
            child: Text('Add Vehicles and Details'),
          ),
          RaisedButton(
            onPressed: ()=>_showReportpanel(),
            child: Text('True Reports'),
          ),
        ],
      ),

    );
  }
}
