import 'package:flutter/material.dart';

import '../../../widgets/createAccount/contentBlock/contentBlock.dart';

class CreateAccountExtraLarge extends StatelessWidget {
  final double bigTextFont;
  final double logoWidth;
  final double inputsHeight;
  final double buttonFontSize;

  const CreateAccountExtraLarge({
    super.key,
    required this.bigTextFont,
    required this.logoWidth,
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
