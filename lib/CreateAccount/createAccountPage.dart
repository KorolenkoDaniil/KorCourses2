import 'package:flutter/material.dart';
import 'ContentBlock/contentBlock.dart';
import 'gradient/gradient.dart';
import 'keyboardImage/keyboard.dart';


class createAccountPage extends StatelessWidget {
  createAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double viewPortWidth = MediaQuery.of(context).size.width;
    double viewPortHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            keyboardImage(viewPortWidth: viewPortWidth, widthCoefficient: 0.6, viewPortHeight: viewPortHeight),
            gradient(),
            Padding(
               padding: EdgeInsets.only(left: 60, top: 45),
               child: contentBlock()
            ),
          ],
        ),
      ),
    );
  }
}
