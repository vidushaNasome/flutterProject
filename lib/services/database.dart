import 'dart:core';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:newproject/models/feedbacksmodel.dart';
import 'package:newproject/models/vehicle.dart';

class DatabaseService{
  //collection reference

  final   CollectionReference vCollection = Firestore.instance.collection('allvehicals');
  final   CollectionReference fCollection = Firestore.instance.collection('feedbacks');

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

  //delete
  void delData() async{
    await vCollection.getDocuments().then((data){
      data.documents.forEach((element) {
    vCollection.document(element.documentID).delete();
      });
    });
  }


}