import 'package:flutter/material.dart';
import 'package:korcourses/shared/design/colors.dart';
import 'package:korcourses/shared/design/textStyles.dart';
import '../../../shared/buttons/accentButton.dart';

class buttonBlock extends StatelessWidget {
  const buttonBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            alignment: Alignment.centerLeft,
            child: accentButton(text: 'Get Started', backgroundColor: AccentColor, textStyle: styleWhitBold.copyWith(fontSize: 32))
        )
    );
  }
}
