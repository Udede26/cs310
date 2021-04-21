import 'package:flutter/material.dart';
import 'package:flutter_app/welcome_body.dart';
import 'package:flutter_app/WalkThrough.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatelessWidget {
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}