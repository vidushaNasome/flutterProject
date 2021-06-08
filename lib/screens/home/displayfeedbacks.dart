
import 'package:newproject/models/feedbacksmodel.dart';
import 'package:newproject/screens/home/vehi_tile.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'feedbacktile.dart';

class Displayfeedbacks extends StatefulWidget {
  //const VehicleList({Key key}) : super(key: key);

  @override
  _DisplayfeedbacksState createState() => _DisplayfeedbacksState();
}

class _DisplayfeedbacksState extends State<Displayfeedbacks> {
  @override
  Widget build(BuildContext context) {

    final fb = Provider.of<List<Feedbacksmodel>>(context);
    print(fb);

    fb.forEach((Feedbacksmodel) {
      print(Feedbacksmodel.email);
      print(Feedbacksmodel.date);
      print(Feedbacksmodel.feedback);
    });

    return ListView.builder(
      itemCount: fb.length,
      itemBuilder: (context,index){
        return FeedbackTile(feed: fb[index]);
      },
    );
  }
}
