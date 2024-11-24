import 'package:flutter/material.dart';
import '../../../shared/design/textStyles.dart';

class topDashBoard extends StatelessWidget {
  const topDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset("assets/black_logo.png", width: 80),

          TextButton(
              onPressed: () {}, child: Text("Home", style: styleWhiteBold20)),
          TextButton(
              onPressed: () {}, child: Text("Courses", style: styleWhiteBold20))
        ],
      ),
    );
  }
}
