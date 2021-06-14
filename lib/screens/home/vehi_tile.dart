import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:newproject/screens/home/feedback_new.dart';
import 'package:newproject/screens/home/feedbacks.dart';
import 'package:newproject/shared/vehicle_btn.dart';

class VehicleTile extends StatelessWidget {
  //const VehicleTile({Key key}) : super(key: key);

  final Vehical vehi;
  VehicleTile({required this.vehi});

  @override
  Widget build(BuildContext context) {

    void _showSettingpanel(){
      print('helloworld');
      showCupertinoModalPopup(
        context: context,
        barrierColor: Colors.blueGrey,
        builder:(context){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 80.0,horizontal: 60.0),
            child: Feedbacks(),
            height: 1200.0,
          );
        } ,
      );
    }

    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(vehi.url),
              backgroundColor: Colors.transparent
        ),
              title: Text(vehi.type),
              subtitle: Text(
                'Color: '+vehi.color,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Now Available in our Stores.'+'Rs.'+vehi.price+'.00',
                style: TextStyle(color: Colors.blueGrey.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                FlatButton.icon(
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedbackNew()),
                    );
                    },
                    icon: Icon(Icons.add_comment_outlined),
                    label: Text(''),

                ),
                FlatButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: vehicle_button(vehi: vehi,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
