import 'package:flutter/material.dart';
import 'package:flutter_app/login_screen.dart';
import 'package:flutter_app/signup_background.dart';
import 'package:flutter_app/or_divider.dart';
import 'package:flutter_app/social_icon.dart';
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
  String name;
  String surname;
  String phone_number;
  String address;
  User(this.email, this.password,this.name,this.surname,this.phone_number,this.address);
}

class Body extends StatelessWidget {


  User user= User('','','','','','');


  _makePostRequest() async {
    // set up POST request arguments
    String email = user.email;
    String password = user.password;
    String name = user.name;
    String surname = user.surname;
    String phone_number = user.phone_number;
    String address = user.address;

    String url = 'https://jsonplaceholder.typicode.com';
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{"email": "$email", "password": "$password","name": "$name","surname": "$surname","phone_number": "$phone_number","address": "$address"}';
    // make POST request
    Response response = await post(  Uri.parse('http://localhost:3000/signup'), headers: headers, body: json);
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {user.email=value;},
            ),
            RoundedInputField(
              hintText: "Name",
              onChanged: (value) {user.name=value;},
            ),
            RoundedInputField(
              hintText: "Surname",
              onChanged: (value) {user.surname=value;},
            ),
            RoundedInputField(
              hintText: "Phone number",
              onChanged: (value) {user.phone_number=value;},
            ),
            RoundedInputField(
              hintText: "Address",
              onChanged: (value) {user.address=value;},
            ),
            RoundedPasswordField(
              onChanged: (value) {user.password=value;},
            ),
            RoundedPasswordFieldAgain(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {  _makePostRequest();},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
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