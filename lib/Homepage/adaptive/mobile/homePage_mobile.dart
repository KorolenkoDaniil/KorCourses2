import 'package:flutter/material.dart';
import 'package:korcourses/Homepage/button/buttonBlock.dart';
import 'package:korcourses/Homepage/images/imagesBlock.dart';
import 'package:korcourses/Homepage/text/homePageText.dart';

import '../../../design/colors.dart';


class homePage_mobile extends StatelessWidget {
  homePage_mobile({Key? key}) : super(key: key);

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