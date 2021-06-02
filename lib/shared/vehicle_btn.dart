import 'package:flutter/material.dart';
import 'package:newproject/screens/home/ViewOneVehicle.dart';

class vehicle_button extends StatelessWidget {


  final String id;


  vehicle_button({required this.id});

  //String? get id => null;
  //final String id;

  //vehicle_button(this.id, {required Key key}) : super(key: key);
  //vehicle_button({required Key key,required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child:RaisedButton(
        color: Colors.grey,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewOneVehicle(id: this.id)),
            );
          },
          child :Text('View More') ,

    ));

  }
}
