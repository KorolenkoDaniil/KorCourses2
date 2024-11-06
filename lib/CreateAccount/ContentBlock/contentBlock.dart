import 'package:flutter/material.dart';
import 'package:korcourses/design/colors.dart';
import '../../design/dimensions.dart';
import '../../design/textStyles.dart';
import '../topDachBoard/topDashBoard.dart';

class contentBlock extends StatelessWidget {
  const contentBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topDashBoard(),
        SizedBox(height: height75),

        Text("Create a new account", style: styleWhitBold32),

        SizedBox(height: height50),

        Container(
          width: 490,
          height: 280,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 64,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Inputs,
                      borderRadius: BorderRadius.all(Radius.circular(radius15)),
                    ),
                  ),

                  Spacer(),

                  Container(
                    height: 64,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Inputs,
                      borderRadius: BorderRadius.all(Radius.circular(radius15)),
                    ),
                  ),
                ],
              ),

              SizedBox(height: height20),

              // Оптимизированный контейнер
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Inputs,
                    borderRadius: BorderRadius.all(Radius.circular(radius15)),
                  ),
                ),
              ),

              SizedBox(height: height20),

              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Inputs,
                    borderRadius: BorderRadius.all(Radius.circular(radius15)),
                  ),
                ),
              ),

              SizedBox(height: height20),

              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Inputs,
                          borderRadius: BorderRadius.all(Radius.circular(radius20)),
                        ),
                      ),

                      Spacer(),

                      Container(
                        height: 40,
                        width: 230,
                        decoration: BoxDecoration(
                          color: Inputs,
                          borderRadius: BorderRadius.all(Radius.circular(radius20)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }
}
