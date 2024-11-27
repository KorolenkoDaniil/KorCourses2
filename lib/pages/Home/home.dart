import 'package:flutter/material.dart';
import 'package:korcourses/pages/Home/adaptive/home_extra_large.dart';
import 'package:korcourses/pages/Home/adaptive/home_extra_small.dart';
import 'package:korcourses/pages/Home/adaptive/home_small.dart';
import 'package:korcourses/pages/Home/adaptive/home_large.dart';
import 'package:korcourses/pages/Home/adaptive/home_medium.dart';

import '../../API/home/home_api.dart';
import '../../shared/design/colors.dart';

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 570)
              return Home_extra_small(onTap: () => toCreateAccount(context));

            else if (constraints.maxWidth > 570 && constraints.maxWidth <= 768)
              return
                HomeSmall(onTap: () => toCreateAccount(context));

            else if (constraints.maxWidth > 768 && constraints.maxWidth <= 992)
              return HomeMedium(imageHeightCoefficient: 1,
                  imageWidthCoefficient: 1,
                  leftTopPadding: 1,
                  leftBlockWidthCoefficient: 1,
                  onTap: () => toCreateAccount(context)
              );

            else if (constraints.maxWidth > 992 && constraints.maxWidth < 1200)
              return Home_large(imageHeightCoefficient: 1,
                  imageWidthCoefficient: 1,
                  leftTopPadding: 1,
                  leftBlockWidthCoefficient: 1,
                  onTap: () => toCreateAccount(context)
              );

            else
              return Home_extra_large(imageHeightCoefficient: 1,
                  imageWidthCoefficient: 1,
                  leftTopPadding: 1,
                  leftBlockWidthCoefficient: 1,
                  onTap: () => toCreateAccount(context)
              );
          },
      )
    );
  }
}

