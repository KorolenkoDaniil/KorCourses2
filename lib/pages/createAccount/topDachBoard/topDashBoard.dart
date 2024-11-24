import 'package:flutter/material.dart';
import '../../../shared/design/textStyles.dart';

class topDashBoard extends StatelessWidget {

  final double logoWidth;
  // final double dashBoardTextFont;

  const topDashBoard({Key? key, required this.logoWidth}) : super(key: key);
  // const topDashBoard({Key? key, required this.logoWidth, required this.dashBoardTextFont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset("assets/black_logo.png", width: logoWidth),

          TextButton(
              onPressed: () {}, child: Text("Home", style: styleWhiteBold20)),
          TextButton(
              onPressed: () {}, child: Text("Courses", style: styleWhiteBold20))
        ],
      ),
    );
  }
}
