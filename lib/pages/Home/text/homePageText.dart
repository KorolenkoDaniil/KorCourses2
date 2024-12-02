import 'package:flutter/material.dart';
import '../../../shared/design/dimensions.dart';
import '../../../shared/design/textStyles.dart';

class homePageText extends StatelessWidget {
  final double height;

  const homePageText({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Advanced\ncomputing expert",
            style: styleBlackBold24
          ),

          Spacer(),

          Text(
            "Take a step towards success – your ideas, experience and hard work will be transformed into real results with our coding courses",
            style: styleBlackRegular16
          )
        ],
      ),
    );
  }
}
