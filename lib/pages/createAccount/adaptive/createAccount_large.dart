import 'package:flutter/material.dart';

import '../../../widgets/createAccount/contentBlock/contentBlock.dart';

class CreateAccountLarge extends StatelessWidget {
  final double logoWidth;
  final double bigTextFont;
  final double inputsHeight;
  final double buttonFontSize;

  CreateAccountLarge({
    Key? key,
    required this.logoWidth,
    required this.bigTextFont,
    required this.inputsHeight,
    required this.buttonFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ContentBlock(
      logoWidth: logoWidth,
      bigTextFont: bigTextFont,
      inputsHeight: inputsHeight,
      buttonFontSize: buttonFontSize,
    ));
  }
}
