import 'package:flutter/material.dart';

class ViewOneVehicle extends StatelessWidget {
  final String id;

  ViewOneVehicle({required this.id});

  //ViewOneVehicle(id);

  //const ViewOneVehicle({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(id),
    );
  }
}

