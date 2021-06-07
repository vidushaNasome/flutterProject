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
                backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.optimonk.com%2F20-ways-e-commerce-websites-get-customer-feedback%2F&psig=AOvVaw0jveou4DZjGoNGIbTAosGv&ust=1623117685172000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIjp2922hPECFQAAAAAdAAAAABAD'),
              ),
              title: Text(
                feed.email + feed.date,
              ),
              subtitle: Text(feed.feedback),

            )
        )
    );
  }
}