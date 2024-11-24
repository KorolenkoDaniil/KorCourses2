import 'package:flutter/material.dart';
import 'package:korcourses/pages/Home/adaptive/mobile/home_mobile.dart';

import '../../shared/design/colors.dart';
import 'adaptive/desktop/homePage_desktop.dart';

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 480)
              return homeMobile();
            else if (constraints.maxWidth > 480 && constraints.maxWidth <= 580)
              return homeLandscape(imageHeightCoefficient: 0.4, imageWidthCoefficient: 0.55, leftTopPadding: 25, leftBlockWidthCoefficient: 0.4);
            else if (constraints.maxWidth > 580 && constraints.maxWidth <= 780)
              return homeLandscape(imageHeightCoefficient: 0.5, imageWidthCoefficient: 0.6, leftTopPadding: 25, leftBlockWidthCoefficient: 0.4);
            else if (constraints.maxWidth > 780 && constraints.maxWidth < 880)
              return homeLandscape(imageHeightCoefficient: 0.55, imageWidthCoefficient: 0.65, leftTopPadding: 30, leftBlockWidthCoefficient: 0.4);
            else if (constraints.maxWidth > 880 && constraints.maxWidth < 1000)
              return homeLandscape(imageHeightCoefficient: 0.6, imageWidthCoefficient: 0.65, leftTopPadding: 30, leftBlockWidthCoefficient: 0.4);
            else
              return homeLandscape(imageHeightCoefficient: 0.65, imageWidthCoefficient: 0.45, leftTopPadding: 35, leftBlockWidthCoefficient: 0.4);
          },
      )
    );
  }
}