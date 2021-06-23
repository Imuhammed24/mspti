import 'package:flutter/material.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/login/login_screen.dart';
import 'package:flutter_app/screens/signup/signup_screen.dart';
import 'package:flutter_app/screens/welcome/components/background.dart';


class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // size provides total height and width of phone screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "MSPTI",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: Colors.white),
          ),
          SizedBox(height: size.height * 0.45,),
          RoundedButton(
            text: "Login",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                    },
                ),
              );
              },
            color: Colors.blue,
            textColor: Colors.white,
          ),
          RoundedButton(
            text: "Sign-up",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return SignUpScreen();
                  },
                ),
              );
            },
            color: kPrimaryLightColor,
            textColor: Colors.black,

          ),
        ],
    ),
      ),
    );
  }
}

