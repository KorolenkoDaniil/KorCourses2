import 'package:flutter/material.dart';
import 'package:korcourses/pages/Home/adaptive/home_extra_small.dart';
import 'package:korcourses/pages/Home/adaptive/home_small.dart';
import 'package:korcourses/pages/Home/adaptive/home_large.dart';
import 'package:korcourses/pages/Home/adaptive/home_medium.dart';

import '../../shared/design/colors.dart';
import 'adaptive/home_extra_large.dart';

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 570)
              return home_extra_small();
            else if (constraints.maxWidth > 570 && constraints.maxWidth <= 768)
              return home_small();
            else if (constraints.maxWidth > 768 && constraints.maxWidth <= 992)
              return home_medium(imageHeightCoefficient: 1, imageWidthCoefficient: 1, leftTopPadding: 1, leftBlockWidthCoefficient: 1);
            else if (constraints.maxWidth > 992 && constraints.maxWidth < 1200)
              return home_large(imageHeightCoefficient: 1, imageWidthCoefficient: 1, leftTopPadding: 1, leftBlockWidthCoefficient: 1);
            else
              return home_large(imageHeightCoefficient: 1, imageWidthCoefficient: 1, leftTopPadding: 1, leftBlockWidthCoefficient: 1);
          },
      )
    );
  }
}