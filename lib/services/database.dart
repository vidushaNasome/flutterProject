import 'package:cloud_firestore/cloud_firestore.dart';

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
}