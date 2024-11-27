import 'package:flutter/material.dart';

import '../../../widgets/createAccount/contentBlock/contentBlock.dart';

class createAccount_small extends StatelessWidget {
  final double logoWidth;
  final double bigTextFont;
  final double inputsHeight;
  final double buttonFontSize;

  const createAccount_small({
    super.key,
    required this.logoWidth,
    required this.bigTextFont,
    required this.inputsHeight,
    required this.buttonFontSize,
  });

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
