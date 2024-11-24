import 'package:flutter/material.dart';
import 'package:korcourses/shared/design/colors.dart';
import '../design/dimensions.dart';

class customButton extends StatelessWidget {

  final String text;
  final TextStyle textStyle;
  final Function() onTap;
  final double heightCoefficient;

  const customButton({
    Key? key,
    required this.text,
    required this.textStyle,
    // required this.onTap,
    required this.heightCoefficient, required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height40 * heightCoefficient,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AccentColor,
          elevation: elevation0,
        ),
        onPressed: onTap,  // Здесь мы вызываем переданную функцию
        child: Text(text, style: textStyle),
      ),
    );
  }
}
