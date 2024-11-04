import 'package:flutter/material.dart';
import '../../design/dimensions.dart';

class imagesBlock extends StatelessWidget {

  final double height;
  final double width;

  imagesBlock({Key? key, required this.height, required this.width}) : super(key: key);

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
                alignment: Alignment.topLeft,),
              width: width60,
            ),

            Spacer(),

            Container(
              height: height,
              width: width,
              padding: EdgeInsets.zero,
              child: Image.asset(
                "assets/Mask group.png",
                alignment: Alignment.topLeft,
                fit: BoxFit.fill,
              ),
            ),
          ],
        )
    );
  }
}
