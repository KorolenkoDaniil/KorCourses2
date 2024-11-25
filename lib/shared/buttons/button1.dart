import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../design/dimensions.dart';
import '../design/textStyles.dart';

class button1 extends StatelessWidget {

  final String buttonText;
  final double width;
  final double fontSize;
  final Function() onTap;

  const button1 ({Key? key, required this.buttonText, required this.onTap, required this.width, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: width,
      height: height56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AccentColor,
          elevation: elevation0,
        ),
        onPressed: onTap,

        child: Center(
          child: Text(buttonText, style: styleWhitBold.copyWith(fontSize: fontSize)),
        )
      ),
    );

  }
}
