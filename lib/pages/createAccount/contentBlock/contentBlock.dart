import 'package:flutter/material.dart';
import 'package:korcourses/pages/CreateAccount/createAccount.dart';

import 'package:korcourses/shared/design/colors.dart';
import 'package:korcourses/shared/design/textStyles.dart';

import '../../../shared/buttons/button.dart';
import '../../../shared/design/dimensions.dart';
import '../topDachBoard/topDashBoard.dart';
import 'inputsBlock/longInputBlock.dart';

class contentBlock extends StatelessWidget {
  const contentBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const topDashBoard(),
        const SizedBox(height: height75),
        Text("Create a new account", style: styleWhitBold32),
        const SizedBox(height: height50),
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
                    decoration: const BoxDecoration(
                      color: Inputs,
                      borderRadius: BorderRadius.all(Radius.circular(radius15)),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 64,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Inputs,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(radius15)),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: height20),

              longInputBlock(heightCoefficient: 1, buttonText: "Email", inputIcon: Icons.mail_outlined),

              const SizedBox(height: height20),

              longInputBlock(heightCoefficient: 1, buttonText: "Password", inputIcon: Icons.visibility),

              const SizedBox(height: height20),

              Expanded(
                child: customButton(
                    text: 'Create account',
                    textStyle: styleWhiteBold20,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => createAccountPage()),
                      );
                    },
                    heightCoefficient: 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
