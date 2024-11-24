import 'package:flutter/material.dart';

import '../../../../shared/design/colors.dart';
import '../../../../shared/design/dimensions.dart';
import 'inputBlockContent/inputBlockContent.dart';

class longInputBlock extends StatelessWidget {

  final double heightCoefficient;
  final String buttonText;
  final IconData inputIcon;

  const longInputBlock({Key? key, required this.heightCoefficient, required this.buttonText, required this.inputIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: 56 * heightCoefficient,
      decoration: BoxDecoration(
        color: Inputs,
        borderRadius: const BorderRadius.all(Radius.circular(radius15)),
      ),
      child: inputBlockContent(buttonText: buttonText, inputIcon: inputIcon,),
    );
  }
}
