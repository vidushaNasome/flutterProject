import 'package:flutter/material.dart';
import 'package:newproject/models/vehicle.dart';
import 'package:newproject/services/auth.dart';

class DeleteVehicle extends StatelessWidget {

  final Vehical vehi;
  DeleteVehicle({required this.vehi,});

  final AuthServices _auth= AuthServices();
  String _id='';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(('Delete Vehicle')),
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: RaisedButton(
                onPressed: () async{
                  try{
                    print('deleted');
                    //print(password);
                    dynamic result = await _auth.deleteVehicle(_id);
                    if(result ==null){
                      //setState(() =>error = 'Could not Sign In with these credentials.');
                      /* setState(() {
                        error = 'Could not Sign In with these credentials.';
                      });*/
                    }else{

                    }
                  }catch(e){

                  }
                },
                child: Text('Delete',style: TextStyle(
                  color: Colors.white
                ),),
                color: Colors.red,
                textColor: Colors.black54,
                padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                splashColor: Colors.grey,
              ),
            )
           /* SizedBox(
              height: 10,
            ),

            SizedBox(
              child: RaisedButton(
                color: Colors.red,
                splashColor: Colors.grey,
                onPressed: () async
                {
                  try{
                    print('deleted');
                    //print(password);
                    dynamic result = await _auth.deleteVehicle(_id);
                    if(result ==null){
                      //setState(() =>error = 'Could not Sign In with these credentials.');
                     /* setState(() {
                        error = 'Could not Sign In with these credentials.';
                      });*/
                    }else{

                    }
                  }catch(e){

                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                  child: Row(
                    children: [
                      Icon(Icons.delete_forever_outlined),
                      Text('Delete'),
                    ],
                  ),
                ),
              ),
            ),*/
          ],
        ),),
    );
  }
}
