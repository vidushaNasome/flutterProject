import 'package:flutter/material.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:newproject/screens/home/ViewOneVehicle.dart';

class vehicle_button extends StatelessWidget {


  //final String id;
  //final Vehical vehi;


  //vehicle_button({required this.vehi});

  final Vehical vehi;

  vehicle_button({required this.vehi,});

  //String? get id => null;
  //final String id;

  //vehicle_button(this.id, {required Key key}) : super(key: key);
  //vehicle_button({required Key key,required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ButtonTheme(
            minWidth: 20.0,
            height: 30.0,
            child:RaisedButton(
        color: Colors.white54,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VehicleDetails(vehi: vehi,)),
            );
          },
          child :Text(
            'View More',
            style: TextStyle(
              color: Colors.deepOrange[400],
              fontWeight: FontWeight.bold,
              fontSize: 15),
          ) ,

    )),);

  }
}
