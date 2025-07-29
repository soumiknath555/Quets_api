import 'package:flutter/material.dart';
import 'package:quets_api/home.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage() ,
    );
  }
}