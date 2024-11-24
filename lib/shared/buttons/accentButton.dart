import 'package:flutter/material.dart';
import '../../pages/CreateAccount/createAccount.dart';
import '../design/dimensions.dart';

class accentButton extends StatelessWidget {

  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;

  const accentButton({Key? key, required this.text, required this.backgroundColor, required this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        elevation: elevation0,
      ),
      onPressed: () {
        Navigator.push(
          context,
           MaterialPageRoute(builder: (context) => createAccountPage()),
        );
      },
      child: Text(text, style: textStyle, ),
    );
  }
}
