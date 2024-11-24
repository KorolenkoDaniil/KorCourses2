import 'package:flutter/material.dart';

class keyboardImage extends StatelessWidget {

  final double viewPortWidth;
  final double viewPortHeight;
  final double widthCoefficient;

  const keyboardImage ({Key? key, required this.viewPortWidth, required this.widthCoefficient, required this.viewPortHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.zero,
        width: viewPortWidth * widthCoefficient,
        height: viewPortHeight,
        child: Image.asset(
          "assets/keyboard.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}




