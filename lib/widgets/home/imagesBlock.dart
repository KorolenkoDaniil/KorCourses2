import 'package:flutter/material.dart';

import '../../shared/design/dimensions.dart';

class imagesBlock extends StatelessWidget {

  final double height;
  final double imageWidth;

  imagesBlock({Key? key, required this.height, required this.imageWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        height: height,

        child: Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: height,
              padding: EdgeInsets.only(top: 20),
              child: Image.asset(
                "assets/black_logo.png",
                alignment: Alignment.topLeft),
              width: width60,
            ),

            Spacer(),

            Container(
              height: height,
              padding: EdgeInsets.zero,
              child: Image.asset(
                "assets/Mask group.png",
                alignment: Alignment.topLeft,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        )
    );
  }
}
