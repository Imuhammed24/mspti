import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/already_have_an_account_check.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import 'package:flutter_app/components/rounded_password_field.dart';
import 'package:flutter_app/screens/login/components/background.dart';
import 'package:flutter_app/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
        ),
        SizedBox(height: size.height * 0.45,),
        RoundedInputField(
          hintText: "Your Username or Email",
          onChanged: (value) {},
        ),
        RoundedPasswordField(onChanged: (value) {},),
        RoundedButton(
          text: "LOGIN",
          press: () {},
        ),
        AlreadyHaveAnAccountCheck(
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
        )
      ],
    ),
    );
  }
}
