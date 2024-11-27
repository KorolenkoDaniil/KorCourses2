import 'package:flutter/material.dart';
import 'package:korcourses/widgets/home/smallContentBlock.dart';

import '../../../shared/design/colors.dart';

class Home_extra_small extends StatelessWidget {

  final Function() onTap;

  Home_extra_small({Key? key, required this.onTap}) : super(key: key);

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