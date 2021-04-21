import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/welcome.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/WalkThrough.dart';
import 'package:flutter_app/bottom_navy_bar.dart';

void main() => runApp(MyApp(



));



class MyApp extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return MaterialApp(



      initialRoute:   "walkthrough" ,
      routes: {
        '/': (BuildContext context) => WelcomeScreen(),
        'walkthrough': (BuildContext context) => ProvidedStylesExample(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}