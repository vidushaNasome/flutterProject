import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:newproject/shared/colors.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:provider/provider.dart';

class VehicleDetails extends StatelessWidget {
  //const VehicleTile({Key key}) : super(key: key);

  final Vehical vehi;
  VehicleDetails({required this.vehi});

  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
  Widget getBody(){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: InkWell(
                onTap: (){
                  //Navigator.pop(context);
                },
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_back_ios)),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              elevation: 2,
              child: Hero(
                tag: vehi.id,
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://miro.medium.com/max/10944/1*s0KYlRAGxVeZ86M5A1ZqxQ.jpeg'),fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Description :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(vehi.color,style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Code :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(vehi.color,style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Price :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                      child: Row(children: <Widget>[
                        Text(vehi.price+" LKR",style: TextStyle(
                            fontSize: 16,height: 1.5
                        ),),
                        SizedBox(width: 20,),
                        Text(vehi.price+" LKR",style: TextStyle(
                            fontSize: 20,height: 1.5,
                            color: primary,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough
                        ),
                        )
                      ],
                      )
                  ),
          ],
              ),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              heroTag: 'button2',
              child: Icon(Icons.delete),
              backgroundColor: Colors.red,
              onPressed: delData,
              foregroundColor: Colors.white,
            ),
          ],
        ),),
    );
  }

  delData() {
  }
}