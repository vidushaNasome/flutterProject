import 'package:flutter/material.dart';
import 'package:newproject/screens/home/detailReport.dart';
import 'package:newproject/shared/colors.dart';
import 'package:newproject/models/vehicle.dart';

class VehicleDetails extends StatelessWidget {

  final Vehical vehi;
  VehicleDetails({required this.vehi});

  @override
  Widget build(BuildContext context) {

    //Get Full Report Button
    void _reportbtn(){
      showModalBottomSheet(
        context: context,
        builder:(context){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
            child: DetailReport(),
          );
        } ,
      );
    }

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
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(vehi.url),fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,110.0, 0.0,0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(vehi.type,style: TextStyle(
                        fontSize: 20.0,fontWeight: FontWeight.bold
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
             /*******************************************************************
             SizedBox(height:40.0),
              Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                child: RaisedButton(
                 onPressed: ()=>_reportbtn(),
                  child: Text('Get Full Report'),
                ),
                ),
              ),*********************************************************************/
          ],
        ),),
    );
  }
}
