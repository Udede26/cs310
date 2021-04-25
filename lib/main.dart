import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/search_explore_body.dart';
import 'package:flutter_app/welcome.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/WalkThrough.dart';
import 'package:flutter_app/bottom_navy_bar.dart';
import 'bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() => runApp(MyApp(


));

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

String initial_route ='walkthrough';

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute:   initial_route ,
      routes: {
        '/': (BuildContext context) => WelcomeScreen(),
        'walkthrough': (BuildContext context) => WalkThrough(),
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