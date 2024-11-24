import 'package:flutter/material.dart';

import '../../contentBlock/contentBlock.dart';

class createAccountMobile extends StatelessWidget {
  final double logoCoefficient;
  // final double dashBoardTextFont;


  createAccountMobile(
      {Key? key,
        required this.logoCoefficient,
        // required this.dashBoardTextFont
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double viewPortHeight = MediaQuery.of(context).size.height;
    double viewPortWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: contentBlock(logoWidth: viewPortWidth * logoCoefficient)
      // child: contentBlock(logoWidth: viewPortWidth * logoCoefficient, dashBoardTextFont: dashBoardTextFont,)
    );
  }
}
