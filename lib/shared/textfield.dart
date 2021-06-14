import 'package:flutter/material.dart';

const CustomTextField=InputDecoration(
    hintText: 'Email',
    prefixIcon: Icon(Icons.car_rental),
    fillColor: Colors.white,
    filled: true,
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.amber,width: 2.0)
    )
);
