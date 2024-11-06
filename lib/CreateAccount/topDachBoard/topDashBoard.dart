import 'package:flutter/material.dart';
import '../../design/colors.dart';
import '../../design/dimensions.dart';

class topDashBoard extends StatelessWidget {

  const topDashBoard ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Row(
              children: [
                Image.asset(
                  "assets/black_logo.png",
                  width: 80,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: White,
                          fontFamily: "Open-Sans",
                          fontSize: fontSize20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),

                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Courses",
                      style: TextStyle(
                          color: White,
                          fontFamily: "Open-Sans",
                          fontSize: fontSize20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                )
              ],
            ),
      );
  }
}




