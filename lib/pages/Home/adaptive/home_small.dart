import 'package:flutter/material.dart';

import '../../../shared/design/colors.dart';
import '../../../widgets/home/smallContentBlock.dart';

class HomeSmall extends StatelessWidget {

  final Function() onTap;

  const HomeSmall({super.key,
    required this.onTap});

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
                  SmallContentBlock(
                      onTap: onTap,
                      height: viewPortHeight * 0.4,
                      imageWidth: (viewPortWidth - 90) *  0.9,
                      bigTextFont: 20,
                      smallTextFont: 14)
                ],
              ),
            )
        )
    );
  }
}