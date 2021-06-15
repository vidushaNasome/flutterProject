import 'package:flutter/cupertino.dart';

class Vehical{
  final String price;
  final String type;
  final String color;
  final String id;
  final String url;
  final List code;

  Vehical({required this.color,required this.price,required this.type,required this.id, required this.url,required this.code});

  static Vehical fromMap(Map<String, dynamic> map){
   return Vehical(
     code: ['code'],
      id: map['id'],
      type: map['type'],
      color: map['color'],
      price: map['price'],
      url: map['url'],

   );
  
  }
  

}