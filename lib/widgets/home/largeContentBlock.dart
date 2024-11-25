import 'package:flutter/material.dart';
import 'package:korcourses/shared/design/dimensions.dart';

import '../../shared/buttons/button1.dart';
import '../../shared/design/textStyles.dart';

class largeContentBlock extends StatelessWidget {
  final double height;
  final double imageWidth;
  final double bigTextFont;
  final double smallTextFont;

  const largeContentBlock({
    Key? key,
    required this.height,
    required this.imageWidth,
    required this.bigTextFont,
    required this.smallTextFont,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Левый контейнер
          Container(
            width: imageWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "assets/black_logo.png",
                    width: width60
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Text("Advanced\ncomputing expert", style: styleBlackBold.copyWith(fontSize: bigTextFont)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                Text("Take a step towards success – your ideas, experience and hard work \n"
                    "will be transformed into real results with our coding courses",
                    style: styleBlackBold.copyWith(fontSize: smallTextFont)),

                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Center(
                  child: button1(
                    buttonText: 'Get started',
                    width: MediaQuery.of(context).size.width * 0.5 * 0.8,
                    fontSize: 32,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),

          // Правый контейнер
          Expanded(
            child: Container(
              height: height,
              alignment: Alignment.topRight, // Изображение в правом верхнем углу
              padding: EdgeInsets.only(top: 10, right: 10), // Отступы от верхнего и правого края
              child: Image.asset(
                "assets/Mask group.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
