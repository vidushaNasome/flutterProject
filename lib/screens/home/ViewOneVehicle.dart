import 'package:flutter/material.dart';
import 'package:newproject/models/vehicle.dart';

class VehicleDetails extends StatelessWidget {

  final Vehical vehi;

  VehicleDetails({required this.vehi,});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(('Vehicle Details')),
        elevation: 0.0,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(vehi.type, style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
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
                      image: DecorationImage(
                          image: NetworkImage(vehi.url), fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text('Vehicle Details', style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.car_repair,
                    size: 30.0,
                  ),
                  Text("Color :", style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(vehi.color, style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.car_repair,
                    size: 30.0,
                  ),
                  Text("Price :", style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(vehi.price, style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.car_repair,
                    size: 30.0,
                  ),
                  Text("Manufacture :", style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text('Toyota', style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.car_repair,
                      size: 30.0,
                    ),
                    Text("More Colors:", style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ]),
            ),
            SizedBox(width: 20,),
            GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(right: 10),
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: vehi.code
                  .map(
                    (ingredient) =>
                    Card(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(
                              ingredient), fit: BoxFit.cover),
                        ),
                      ),
                    ),
              )
                  .toList(),
            ),
           SizedBox(height: 40,),
           Padding(
             padding: const EdgeInsets.only(left: 20, right: 20),
             child: Container(
               height:40.0,
               child: Material(
                 borderRadius: BorderRadius.circular(20.0),
                 shadowColor: Colors.amberAccent,
                 color: Colors.amber,
                 elevation: 7.0,
                 child: Center(
                   child: Text(
                     'Get Full Report',
                     style: TextStyle(
                         color: Colors.black87,
                         fontFamily: 'Monster'
                     ),
                   ),
                 ),
               ),
             ),
           ),
          ],
        ),),
    );
  }
}
