import 'package:flutter/material.dart';
import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    // required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius:BorderRadius.circular(29),
        child: FlatButton(
            color: color,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 65),
            onPressed: press,
            child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: textColor, letterSpacing: 2))
        ),
      ),
    );
  }
}
