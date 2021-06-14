import 'package:newproject/models/report.dart';
import 'package:newproject/screens/home/detailReport.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class AllReports extends StatefulWidget {

  @override
  _AllReportsState createState() => _AllReportsState();
}

class _AllReportsState extends State<AllReports> {
  @override
  Widget build(BuildContext context) {

    final rp = Provider.of<List<Report>>(context);

    rp.forEach((Report) {
      print(Report.img);
      print(Report.no);
      print(Report.auction);
      print(Report.auctionDate);
      print(Report.lotNo);
      print(Report.chassisID);
      print(Report.vendor);
      print(Report.model);
      print(Report.mileage);
      print(Report.enginecc);
      print(Report.year);
      print(Report.grade);
      print(Report.transmission);
      print(Report.startPrice);
      print(Report.finishPrice);
      print(Report.condition);
      print(Report.status);
    });
    return ListView.builder(
      itemCount: rp.length,
      itemBuilder: (context,index){
        return DetailReport(report: rp[index]);
      },
    );
  }
}
