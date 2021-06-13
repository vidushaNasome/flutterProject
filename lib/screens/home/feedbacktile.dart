import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/feedbacksmodel.dart';
import 'package:newproject/shared/vehicle_btn.dart';

class   FeedbackTile extends StatelessWidget {
  //const VehicleTile({Key key}) : super(key: key);

  final Feedbacksmodel feed;
  FeedbackTile({required this.feed});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top:12.0),
        child: Card(
            margin: EdgeInsets.fromLTRB(40.0, 6.0, 40.0, 6.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('assests/pic3.png'),
              ),
              title: Text(
                feed.email +'\n' +feed.date+'\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontFamily: 'RaleWay',
                ),
              ),
              subtitle: Text(
                  'Feedbacks and Complaint '+'\n'+feed.feedback,
                style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.0,
                fontFamily: 'RaleWay',
              ),

              ),


            )
        )
    );
  }
}