import 'package:flutter/material.dart';

import '../../../shared/design/colors.dart';

import '../../../widgets/home/largeContentBlock.dart';

class HomeMedium  extends StatelessWidget {
  final double imageHeightCoefficient;
  final double imageWidthCoefficient;
  final double leftTopPadding;
  final double leftBlockWidthCoefficient;
  final Function() onTap;

  HomeMedium(
      {Key? key,
      required this.imageHeightCoefficient,
      required this.imageWidthCoefficient,
      required this.leftTopPadding,
      required this.leftBlockWidthCoefficient,
      required this.onTap})
      : super(key: key);

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
                child: LargeContentBlock(
                    height: viewPortHeight * 0.7,
                    imageWidth: (viewPortWidth - 20) / 2,
                    bigTextFont: 28,
                    smallTextFont: 16,
                    onTap: onTap
                )
            )
        )
    );
  }
}
