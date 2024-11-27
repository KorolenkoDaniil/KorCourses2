import 'package:flutter/material.dart';

class keyboardImage extends StatelessWidget {
  final double width;
  final double height;
  final Alignment alignment;

  const keyboardImage ({Key? key,
    required this.alignment,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: EdgeInsets.zero,
        width: width,
        height: height,
        child: Image.asset(
          "assets/keyboard.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}






