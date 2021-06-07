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
        margin: EdgeInsets.fromLTRB(40.0, 6.0, 40.0, 6.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(vehi.url),
          ),
          title: Text(
              vehi.type

          ),
          subtitle: vehicle_button(vehi: vehi,),
        )
      )
    );
  }
}
