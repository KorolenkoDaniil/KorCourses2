import 'package:flutter/material.dart';
import 'longInputTextField/longInputTextField.dart';


class inputBlockContent extends StatelessWidget {

  final String buttonText;
  final IconData inputIcon;

  const inputBlockContent({Key? key, required this.buttonText, required this.inputIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: LongInputTextField(buttonText: buttonText),
    );
  }
}
