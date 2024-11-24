import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../design/dimensions.dart';

class button1 extends StatelessWidget {

  final String buttonText;
  final Function() onTap;

  const button1 ({Key? key, required this.buttonText, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 492,
      height: height56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AccentColor,
          elevation: elevation0,
        ),
        onPressed: onTap,
        // child: Text("asfgdfg", style: textStyle),
        child: Center(
          child: Text(buttonText),
        )
      ),
    );

  }
}
