import 'package:flutter/material.dart';

import '../../shared/buttons/button1.dart';
import '../../shared/design/dimensions.dart';
import '../../shared/design/textStyles.dart';

class SmallContentBlock extends StatelessWidget {
  final double height;
  final double imageWidth;
  final Function() onTap;
  final double bigTextFont;
  final double smallTextFont;

  const SmallContentBlock({super.key,
    required this.height,
    required this.imageWidth,
    required this.bigTextFont,
    required this.smallTextFont,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(

            alignment: Alignment.centerLeft,

            height: height,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: height,
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset("assets/black_logo.png",
                      alignment: Alignment.topLeft),
                  width: width60,
                ),
                Spacer(),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  height: height,
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    "assets/Mask group.png",
                    alignment: Alignment.topRight,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          Text("Advanced\ncomputing expert",
              style: styleBlackBold.copyWith(fontSize: bigTextFont)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text(
              "Take a step towards success – your ideas, experience and hard work \n"
              "will be transformed into real results with our coding courses",
              style: styleBlackBold.copyWith(fontSize: smallTextFont)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Center(
            child: Button1(
                buttonText: 'Get started',
                width: MediaQuery.of(context).size.width * 0.7,
                fontSize: 20,
                onTap: onTap
            ),
          ),
        ],
      ),
    );
  }
}
