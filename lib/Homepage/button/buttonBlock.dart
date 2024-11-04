import 'package:flutter/material.dart';
import 'package:korcourses/design/colors.dart';
import '../../design/dimensions.dart';

class buttonBlock extends StatelessWidget {
  const buttonBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          alignment: Alignment.centerLeft,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AccentColor,
              foregroundColor: White,
              elevation: elevation0,
            ),
            onPressed: () {},
            child: const Text("Get started",
              style: TextStyle(
                  fontSize: fontSize24,
                  fontFamily: "Open-Sans"
              ),
            ),
          ),
        )
    );
  }
}
