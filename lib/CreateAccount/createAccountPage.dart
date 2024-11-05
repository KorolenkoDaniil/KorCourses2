import 'package:flutter/material.dart';
import 'gradient/gradient.dart';
import 'keyboardImage/keyboard.dart';

class createAccountPage extends StatelessWidget {
  createAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double viewPortWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            keyboardImage(viewPortWidth: viewPortWidth, widthCoefficient:  0.6),
            gradient()
          ],
        ),
      ),
    );
  }
}
