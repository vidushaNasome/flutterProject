import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:newproject/screens/home/manage_form.dart';
import 'package:newproject/screens/home/setting_form.dart';
import 'package:newproject/screens/home/vehicle_list.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/services/database.dart';
import 'package:provider/provider.dart';

class  home extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  final AuthServices _auth= AuthServices();

  @override
  Widget build(BuildContext context) {

    void _showSettingpanel(){
      showCupertinoModalPopup(
          context: context,
          barrierColor: Colors.blueGrey,
          builder:(context){
            return Container(
              padding: EdgeInsets.symmetric(vertical: 80.0,horizontal: 60.0),
              child: ManageForm(),
              height: 1200.0,
            );
          } ,
      );
    }
    /*void _showSettingpanel(){
      Container(
        padding: EdgeInsets.symmetric(vertical: 80.0,horizontal: 60.0),
        child: ManageForm(),

      );
    }*/
    return StreamProvider<List<Vehical>>.value(
      value: DatabaseService(uid: '').vehicles,
      child: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Toyota '),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async{
              await _auth.signout();
            },
            icon: Icon(Icons.person),
            label: Text('logout'),

          ),
          FlatButton.icon(
              onPressed: ()=>_showSettingpanel(),
              icon: Icon(Icons.settings),
            label: Text('Dashboard'),
          ),

        ],
      ),
        body: VehicleList(),
    )
    );
  }
}
