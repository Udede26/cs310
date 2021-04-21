import 'package:flutter/material.dart';
import 'package:flutter_app/colors.dart';
import 'package:flutter_app/login_screen.dart';
import 'package:flutter_app/signup_screen.dart';
import 'package:flutter_app/welcome_background.dart';
import 'package:flutter_app/rounded_button.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/styles.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Container(
          color: AppColors.bodyColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "WELCOME TO OUR SHOP",
                style: styles.WelcomeTitleTextStyle,
              ),
              SizedBox(height: size.height * 0.05),
              Image.asset(
                "assets/icons/bestcart.jpeg",
                height: size.height * 0.45,
                width: size.width *0.60
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "LOGIN",
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
              RoundedButton(
                text: "SIGN UP",
                color: kPrimaryLightColor,
                textColor: Colors.black,
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
      ),
    );
  }
}