import 'package:flutter/material.dart';

import '../../../../shared/design/colors.dart';
import '../../button/buttonBlock.dart';
import '../../images/imagesBlock.dart';
import '../../text/homePageText.dart';

class homeMobile extends StatelessWidget {
  homeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double viewPortHeight = MediaQuery.of(context).size.height;
    double viewPortWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color: BackgroundColor,
            ),
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  imagesBlock(height: viewPortHeight * 0.4, width: viewPortWidth * 0.7),
                  homePageText(height: viewPortHeight * 0.35),
                  buttonBlock()
                ],
              ),
            )
        )
    );
  }
}