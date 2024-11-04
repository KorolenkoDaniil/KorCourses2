import 'package:flutter/material.dart';
import 'package:korcourses/Homepage/adaptive/desktop/homePage_desktop.dart';
import 'package:korcourses/Homepage/adaptive/mobile/homePage_mobile.dart';

import '../design/colors.dart';

class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 480) {
              return homePage_mobile();
            }
            else if (constraints.maxWidth > 480 && constraints.maxWidth <= 580)
              return homePageLandscape(imageHeightCoefficient: 0.4, imageWidthCoefficient: 0.55, leftTopPadding: 25, leftBlockWidthCoefficient: 0.4);
            else if (constraints.maxWidth > 580 && constraints.maxWidth <= 780)
              return homePageLandscape(imageHeightCoefficient: 0.5, imageWidthCoefficient: 0.6, leftTopPadding: 25, leftBlockWidthCoefficient: 0.4);
            else if (constraints.maxWidth > 780 && constraints.maxWidth < 880)
              return homePageLandscape(imageHeightCoefficient: 0.55, imageWidthCoefficient: 0.65, leftTopPadding: 30, leftBlockWidthCoefficient: 0.4);
            else if (constraints.maxWidth > 880 && constraints.maxWidth < 1000)
              return homePageLandscape(imageHeightCoefficient: 0.6, imageWidthCoefficient: 0.65, leftTopPadding: 30, leftBlockWidthCoefficient: 0.4);
            else
              return homePageLandscape(imageHeightCoefficient: 0.65, imageWidthCoefficient: 0.45, leftTopPadding: 35, leftBlockWidthCoefficient: 0.4);
          },
      )
    );
  }
}