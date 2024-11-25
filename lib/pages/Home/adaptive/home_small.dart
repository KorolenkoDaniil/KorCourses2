import 'package:flutter/material.dart';

import '../../../shared/design/colors.dart';
import '../../../widgets/home/imagesBlock.dart';

class home_small extends StatelessWidget {

  home_small({Key? key}) : super(key: key);

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
                  imagesBlock(height: viewPortHeight * 0.45, imageWidth:  (viewPortWidth - 90) * 0.7)
                ],
              ),
            )
        )
    );
  }
}