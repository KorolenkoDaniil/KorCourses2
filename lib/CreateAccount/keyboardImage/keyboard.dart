import 'package:flutter/material.dart';

class keyboardImage extends StatelessWidget {

  final double viewPortWidth;
  final double widthCoefficient;

  const keyboardImage ({Key? key, required this.viewPortWidth, required this.widthCoefficient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        width: viewPortWidth * widthCoefficient,
        child: Image.asset(
          "assets/keyboard.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}




