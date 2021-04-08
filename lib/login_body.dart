import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/login_background.dart';
import 'package:flutter_app/signup_screen.dart';
import 'package:flutter_app/already_have_an_account_acheck.dart';
import 'package:flutter_app/rounded_button.dart';
import 'package:flutter_app/rounded_input_field.dart';
import 'package:flutter_app/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app/welcome.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class User {
  String email;
  String password;
  User(this.email, this.password);
}



class Body extends StatelessWidget {
   Body({
    Key key,
  }) : super(key: key);


  User user= User('','');


   _makePostRequest() async {
     // set up POST request arguments
     String email = user.email;
     String password = user.password;
     String url = 'https://jsonplaceholder.typicode.com/posts';
     Map<String, String> headers = {"Content-type": "application/json"};
     String json = '{"email": "$email", "password": "$password"}';
     // make POST request
     Response response = await post(  Uri.parse('http://localhost:3000/login'), headers: headers, body: json);
     // check the status code for the result
     int statusCode = response.statusCode;
     // this API passes back the id of the new item added to the body
     String body = response.body;
     // {
     //   "title": "Hello",
     //   "body": "body text",
     //   "userId": 1,
     //   "id": 101
     // }
   }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 150,
              child: Align(
                alignment: Alignment.topLeft,
                child:  RoundedButton(
                  text: "BACK",
                  press: () { Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomeScreen();
                      },
                    ),
                  );},
                ),
              ),
            ),

            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/book.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {user.email = value;},
            ),
            RoundedPasswordField(
              onChanged: (value) {user.password = value;},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {_makePostRequest();},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }



}