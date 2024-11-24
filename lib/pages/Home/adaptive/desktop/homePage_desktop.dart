import 'package:flutter/material.dart';

import '../../../../shared/design/colors.dart';
import '../../../../shared/design/dimensions.dart';
import '../../button/buttonBlock.dart';
import '../../text/homePageText.dart';

class homeLandscape extends StatelessWidget {

  final double imageHeightCoefficient;
  final double imageWidthCoefficient;
  final double leftTopPadding;
  final double leftBlockWidthCoefficient;

  homeLandscape({Key? key, required this.imageHeightCoefficient, required this.imageWidthCoefficient, required this.leftTopPadding, required this.leftBlockWidthCoefficient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double viewPortHeight = MediaQuery.of(context).size.height;
    double viewPortWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: BackgroundColor,
        ),
        margin: EdgeInsets.only(left: leftTopPadding),
        child: Row(
          children: [
            Container(
                width: viewPortWidth * leftBlockWidthCoefficient,
                child: Column(children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.only(top: leftTopPadding),
                      child: Image.asset(
                        "assets/black_logo.png",
                      ),
                      width: width60,
                    ),
                  ),
                  homePageText(height: viewPortHeight * 0.4),
                  buttonBlock()
                ])),
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: viewPortHeight * imageHeightCoefficient,
                  width: viewPortWidth * imageWidthCoefficient,
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                      "assets/Mask group.png",
                      fit: BoxFit.fill
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
