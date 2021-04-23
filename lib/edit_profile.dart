import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/login_background.dart';
import 'package:flutter_app/signup_screen.dart';
import 'package:flutter_app/already_have_an_account_acheck.dart';
import 'package:flutter_app/rounded_button.dart';
import 'package:flutter_app/rounded_input_field.dart';
import 'package:flutter_app/rounded_password_field.dart';
import 'package:flutter_app/styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app/welcome.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:flutter_app/colors.dart';


class editprofile extends StatefulWidget {
  @override
  edit_profile_view createState() => new edit_profile_view();
}


class edit_profile_view extends State<editprofile>{
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title:Text('Edit profile'),
        backgroundColor: AppColors.mainColor,
      ),
      body: SingleChildScrollView(

    child: Padding(
      padding: const EdgeInsets.fromLTRB(0,50,0,0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage('https://180dc.org/wp-content/uploads/2017/11/profile-placeholder.png'),
            radius: 44.0,
          ),
          RaisedButton(
            child: Text('Change Profile Picture'),
            color: AppColors.buttonColor,
            onPressed: () {
            },
          ),
          SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Name',style:TextStyle(fontSize:25)),
              SizedBox(width: 10),
              SizedBox(
                width: 200,
                child: TextFormField(
                  initialValue: "Name",
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Username',style:TextStyle(fontSize:25)),
              SizedBox(
                width: 200,
                child: TextFormField(
                  initialValue: "Username",
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Bio',style:TextStyle(fontSize:25)),
              SizedBox(width: 70),
              SizedBox(
                width: 200,
                child: TextFormField(
                  initialValue: "Bio",
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          SizedBox(height: 100),
          RoundedButton(
            text: "SAVE CHANGES",
            press: () {  },
          ),
          SizedBox(height: 0.03),
        ],
      ),
    ),
    ),
    );
  }
}