import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      color: kPrimaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: -45,
          //   left: -45,
          //   child: Image.asset(
          //     "assets/images/clip_502.png",
          //     width: size.width * 0.3,
          //   ),
          // ),
          Positioned(
            top: 200,
            // left: 45,
            child: Image.asset(
              "assets/images/urban_206.png",
              width: size.width * 0.98,
            ),
          ),
          child,
        ],
      ),
    );
  }
}