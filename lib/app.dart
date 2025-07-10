import 'package:flutter/material.dart';
import 'package:fluttertestproject/componentlist.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ComponentList()
    );
  }
}