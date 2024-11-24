import 'package:flutter/material.dart';
import 'package:korcourses/shared/design/textStyles.dart';
import '../../../shared/design/dimensions.dart';
import '../../../widgets/createAccountPageInputBlock/blockOfInputs.dart';
import '../topDachBoard/topDashBoard.dart';


class contentBlock extends StatelessWidget {

  final double logoWidth;
  final double bigTextFont;

  const contentBlock({Key? key, required this.logoWidth, required this.bigTextFont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topDashBoard(logoWidth: logoWidth),
        const SizedBox(height: height75),
        Text("Create a new account", style: styleWhitBold.copyWith(fontSize: bigTextFont)),
        const SizedBox(height: height32),
        blockOfInputs()
      ],
    );
  }
}
