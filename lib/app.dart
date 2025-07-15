import 'package:flutter/material.dart';
import 'package:fluttertestproject/flutterform.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlutterForm()
    );
  }
}