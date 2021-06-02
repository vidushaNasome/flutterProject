import 'dart:core';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:newproject/models/vehicle.dart';

class DatabaseService{
  //collection reference

  final   CollectionReference vCollection = Firestore.instance.collection('vehicals');

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
      );
    }).toList();
  }


  Stream<List<Vehical>> get vehicles{
    return vCollection.snapshots()
      .map(_vlistfromsnapshot);

  }


}