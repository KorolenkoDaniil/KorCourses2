import 'package:flutter/material.dart';
import 'package:korcourses/widgets/home/imagesBlock.dart';

import '../../../shared/design/colors.dart';

class home_extra_small extends StatelessWidget {

  home_extra_small({Key? key}) : super(key: key);

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
                    imagesBlock(height: viewPortHeight * 0.4, imageWidth: (viewPortWidth - 90) *  0.9)
                ],
              ),
            )
        )
    );
  }
}