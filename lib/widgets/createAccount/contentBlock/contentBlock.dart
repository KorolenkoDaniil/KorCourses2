import 'package:flutter/material.dart';
import 'package:korcourses/shared/design/textStyles.dart';
import '../../../shared/design/dimensions.dart';
import '../createAccountPageInputBlock/blockOfInputs.dart';
import '../topDachBoard/topDashBoard.dart';


class ContentBlock extends StatelessWidget {

  final double logoWidth;
  final double bigTextFont;
  final double inputsHeight;
  final double buttonFontSize;

  const ContentBlock({super.key,
    required this.logoWidth,
    required this.bigTextFont,
    required this.inputsHeight,
    required this.buttonFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topDashBoard(logoWidth: logoWidth),
        const SizedBox(height: height75),
        Text("Create a new account", style: styleWhitBold.copyWith(fontSize: bigTextFont)),
        const SizedBox(height: height32),
        BlockOfInputs(inputsHeight: inputsHeight, buttonFontSize: buttonFontSize,)
      ],
    );
  }
}
