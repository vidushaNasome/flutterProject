import 'package:flutter/material.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:newproject/shared/vehicle_btn.dart';

class VehicleTile extends StatelessWidget {
  //const VehicleTile({Key key}) : super(key: key);

  final Vehical vehi;
  VehicleTile({required this.vehi});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 6.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage('https://miro.medium.com/max/10944/1*s0KYlRAGxVeZ86M5A1ZqxQ.jpeg'),
          ),
          title: Text(vehi.color),
          subtitle: vehicle_button(vehi: vehi,),
        )
      )
    );
  }
}
