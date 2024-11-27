import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../design/dimensions.dart';
import '../design/textStyles.dart';

class Button1 extends StatelessWidget {
  final String buttonText;
  final double width;
  final double fontSize;
  final VoidCallback onTap;

  const Button1(
      {super.key,
      required this.buttonText,
      required this.onTap,
      required this.width,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height56,
        child: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AccentColor,
                elevation: elevation0,
              ),
              onPressed: onTap,
              child: Center(
                child: Text(buttonText,
                    style: styleWhitBold.copyWith(fontSize: fontSize)),
              )),
        ));
  }
}
