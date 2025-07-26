import 'package:flutter/material.dart';
import 'package:fluttertestproject/navigation.dart';
import 'package:fluttertestproject/routeandnavigation.dart';
import 'package:fluttertestproject/stackandprogress.dart';
import 'package:fluttertestproject/todoappandalert.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.deepPurple[50],
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 206, 66, 248),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RouteAndNavigation(),
        '/stackAndProgress': (context) => StackAndProgress(),
        '/todoAppAndAlert': (context) => TodoAppAndAlert(),
        '/navigationbasic': (context) =>  NavigationBasic(),
      },
    );
  }
}