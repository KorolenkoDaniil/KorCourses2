import 'package:flutter/material.dart';
import '../../widgets/createAccount/gradient/gradient.dart';
import '../../widgets/createAccount/keyboardImage/keyboard.dart';
import 'adaptive/createAccount_extra_large.dart';
import 'adaptive/createAccount_extra_small.dart';
import 'adaptive/createAccount_large.dart';
import 'adaptive/createAccount_medium.dart';
import 'adaptive/createAccount_small.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    double viewPortWidth = MediaQuery.of(context).size.width;
    double viewPortHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 480) {
                return keyboardImage(
                  alignment: Alignment.bottomCenter,
                  width: viewPortWidth,
                  height: viewPortHeight * 0.5,
                );
              } else if (constraints.maxWidth > 480 &&
                  constraints.maxWidth <= 600)
                return keyboardImage(
                  alignment: Alignment.bottomCenter,
                  width: viewPortWidth,
                  height: viewPortHeight * 0.6,
                );
              else if (constraints.maxWidth > 600 &&
                  constraints.maxWidth <= 780)
                return keyboardImage(
                    alignment: Alignment.centerRight,
                    width: viewPortWidth * 0.8,
                    height: viewPortHeight);
              else if (constraints.maxWidth > 780 && constraints.maxWidth < 880)
                return keyboardImage(
                    alignment: Alignment.centerRight,
                    width: viewPortWidth * 0.68,
                    height: viewPortHeight);
              else if (constraints.maxWidth > 880 &&
                  constraints.maxWidth < 1000)
                return keyboardImage(
                    alignment: Alignment.centerRight,
                    width: viewPortWidth * 0.65,
                    height: viewPortHeight);
              else
                return keyboardImage(
                    alignment: Alignment.centerRight,
                    width: viewPortWidth * 0.60,
                    height: viewPortHeight);
            }),
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600)
                return gradient(
                    begin: Alignment.topCenter, end: Alignment.bottomCenter);
              else
                return gradient(
                    begin: Alignment.centerLeft, end: Alignment.centerRight);
            }),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                EdgeInsets currentPadding;

                if (constraints.maxWidth <= 768) {
                  currentPadding =
                      EdgeInsets.symmetric(horizontal: 30, vertical: 25);
                } else {
                  currentPadding =
                      EdgeInsets.symmetric(horizontal: 60, vertical: 50);
                }

                return Padding(
                  padding: currentPadding,
                  child: LayoutBuilder(
                    builder: (BuildContext context,
                        BoxConstraints innerConstraints) {
                      if (constraints.maxWidth <= 480) {
                        return CreateAccountExtraSmall(
                          logoWidth: 50,
                          bigTextFont: 18,
                          inputsHeight: 45,
                          buttonFontSize: 16,
                        );
                      } else if (constraints.maxWidth > 480 &&
                          constraints.maxWidth <= 600)
                        return createAccount_small(
                          logoWidth: 55,
                          bigTextFont: 18,
                          inputsHeight: 45,
                          buttonFontSize: 18,
                        );
                      else if (constraints.maxWidth > 600 &&
                          constraints.maxWidth <= 960)
                        return CreateAccountMedium(
                          logoWidth: 60,
                          bigTextFont: 20,
                          inputsHeight: 50,
                          buttonFontSize: 20,
                        );
                      else if (constraints.maxWidth > 960 &&
                          constraints.maxWidth < 1200)
                        return CreateAccountLarge(
                          logoWidth: 65,
                          bigTextFont: 20,
                          inputsHeight: 50,
                          buttonFontSize: 20,
                        );
                      else
                        return CreateAccountExtraLarge(
                          logoWidth: 70,
                          bigTextFont: 24,
                          inputsHeight: 56,
                          buttonFontSize: 24,
                        );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
