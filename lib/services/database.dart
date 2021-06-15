import 'dart:core';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:newproject/models/feedbacksmodel.dart';
import 'package:newproject/models/report.dart';
import 'package:newproject/models/vehicle.dart';

class DatabaseService{
  //collection reference

  final   CollectionReference vCollection = Firestore.instance.collection('allvehicals');
  final   CollectionReference fCollection = Firestore.instance.collection('feedbacks');
  final   CollectionReference rCollection = Firestore.instance.collection('report');

  final String uid;
  DatabaseService({required this.uid});

  Future updateUserdata(String price, String type, String color) async{
    return await vCollection.document(uid).setData({
      'price':price,
      'type':type,
      'color':color,
    }
    );
  }

  List<Vehical> _vlistfromsnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Vehical(
        color:doc['color'] ?? '',
        type:doc['type'] ?? '',
        price:doc['price'] ?? '',
        id: doc['id']??'',
        url: doc['url']??'',
        code: doc['code']??'',
      );
    }).toList();
  }


  Stream<List<Vehical>> get vehicles{
    print('inside vehicles');
    return vCollection.snapshots()
      .map(_vlistfromsnapshot);

  }

  List<Feedbacksmodel> _flistfromsnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Feedbacksmodel(
        feedback: doc['feedback'],
        date: doc['date'],
        email: doc['email'],
      );
    }).toList();
  }


  Stream<List<Feedbacksmodel>> get feedbacks{
    print('inside feedbacks');
    return fCollection.snapshots()
        .map(_flistfromsnapshot);

  }

  //List of reports
  List<Report> _rlistfromsnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Report(
        id: doc['id']??'',
        img:doc['img'] ?? '',
        no:doc['no'] ?? '',
        auction:doc['auction'] ?? '',
        auctionDate: doc['auctionDate']??'',
        lotNo: doc['lotNo']??'',
        chassisID: doc['chassisID']??'',
        vendor:doc['vendor'] ?? '',
        model:doc['model'] ?? '',
        mileage:doc['mileage'] ?? '',
        enginecc: doc['enginecc']??'',
        year: doc['year']??'',
        grade: doc['grade']??'',
        transmission:doc['transmission'] ?? '',
        startPrice:doc['startPrice'] ?? '',
        finishPrice:doc['finishPrice'] ?? '',
        condition: doc['condition']??'',
        status: doc['status']??'',
      );
    }).toList();
  }

  Stream<List<Report>> get treports{
    print('inside report');
    return rCollection.snapshots()
        .map(_rlistfromsnapshot);

  }

  
}