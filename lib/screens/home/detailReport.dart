import 'package:flutter/material.dart';
import 'package:newproject/models/report.dart';

class DetailReport extends StatelessWidget {

  final Report report;
  DetailReport({required this.report,});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top:12.0),
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(report.no),
              subtitle: Text(
                'Auction: '+report.auction,
                style: TextStyle(
                    fontSize: 16,
                    height: 1.5
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              elevation: 2,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(report.img),fit: BoxFit.cover)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Auction Date :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.auctionDate,style: TextStyle(
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
                  Text("Lot Number :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.lotNo,style: TextStyle(
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
                  Text("Chassis ID :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.chassisID,style: TextStyle(
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
                  Text("Vendor :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.vendor,style: TextStyle(
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
                  Text("Model :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.model,style: TextStyle(
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
                  Text("Mileage :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.mileage,style: TextStyle(
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
                  Text("Engine CC :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.enginecc,style: TextStyle(
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
                  Text("Year :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.year,style: TextStyle(
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
                  Text("Grade :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.grade,style: TextStyle(
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
                  Text("Transmission :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.transmission,style: TextStyle(
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
                  Text("Start Price :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.startPrice,style: TextStyle(
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
                  Text("Finish Price :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.finishPrice,style: TextStyle(
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
                  Text("Condition :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.condition,style: TextStyle(
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
                  Text("Status :",style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Flexible(
                    child: Text(report.status,style: TextStyle(
                        fontSize: 16,
                        height: 1.5
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,
            ),
            SizedBox(
                width: 80,
              child: RaisedButton(
                onPressed: ()=>{},
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Icon(Icons.touch_app),
                      Text('Add'),
                  ],
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}