import 'package:newproject/models/vehicle.dart';
import 'package:newproject/screens/home/vehi_tile.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class VehicleList extends StatefulWidget {
  //const VehicleList({Key key}) : super(key: key);

  @override
  _VehicleListState createState() => _VehicleListState();
}

class _VehicleListState extends State<VehicleList> {
  @override
  Widget build(BuildContext context) {

    final vecls = Provider.of<List<Vehical>>(context);


    //print(vecls);

    /*for(var doc in vecls.documents){
      print(doc.data);
    }*/

    vecls.forEach((Vehical) {
      print(Vehical.type);
      print(Vehical.price);
      print(Vehical.color);
    });
    return ListView.builder(
      itemCount: vecls.length,
      itemBuilder: (context,index){
        return VehicleTile(vehi: vecls[index]);
      },
    );
  }
}
