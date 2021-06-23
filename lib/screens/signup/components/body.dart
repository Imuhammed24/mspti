import 'package:flutter/material.dart';
import 'package:flutter_app/components/already_have_an_account_check.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import 'package:flutter_app/components/rounded_password_field.dart';
import 'package:flutter_app/screens/signup/components/background.dart';


class Body extends StatelessWidget{
  final Widget child;

  const Body({
    Key? key,
    required this.child
  }
      ) : super(key: key);
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
        ),
        Positioned(
            child: Image.asset("assets/images/signup.png", width: size.width * 0.6,)
        ),
        RoundedInputField(hintText: "Your username", onChanged: (value) {}),
        RoundedInputField(hintText: "Your email", onChanged: (value) {}),
        RoundedPasswordField(onChanged: (value) {}),
        RoundedButton(text: "Sign Up", press: () {},),
        AlreadyHaveAnAccountCheck(press: () {}, login: false,),
      ],
    ),);
  }
}
