import 'package:flutter/material.dart';
import 'adaptive/desktop/createAccountLandScape.dart';
import 'adaptive/mobile/createAccountMobile.dart';
import 'gradient/gradient.dart';
import 'keyboardImage/keyboard.dart';

class createAccountPage extends StatelessWidget {
  createAccountPage({Key? key}) : super(key: key);

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
                  constraints.maxWidth <= 605)
                return keyboardImage(
                  alignment: Alignment.bottomCenter,
                  width: viewPortWidth,
                  height: viewPortHeight * 0.5,
                );
              else if (constraints.maxWidth > 580 &&
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
              if (constraints.maxWidth <= 605)
                return gradient(
                    begin: Alignment.topCenter, end: Alignment.bottomCenter);
              else
                return gradient(
                    begin: Alignment.centerLeft, end: Alignment.centerRight);
            }),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                EdgeInsets currentPadding;

                if (constraints.maxWidth <= 480) {
                  currentPadding =
                      EdgeInsets.symmetric(horizontal: 30, vertical: 25);
                } else {
                  currentPadding =
                      EdgeInsets.symmetric(horizontal: 60, vertical: 50);
                }


                return Padding(
                  padding: currentPadding, // Устанавливаем вычисленный padding
                  child: LayoutBuilder(
                    builder: (BuildContext context,
                        BoxConstraints innerConstraints) {
                      if (constraints.maxWidth <= 480) {
                        return createAccountMobile(
                            logoCoefficient: 0.15, bigTextFont: 24);
                      } else if (constraints.maxWidth > 480 &&
                          constraints.maxWidth <= 605) {
                        return createAccountLandscape(
                            logoCoefficient: 0.12, bigTextFont: 24);
                      } else if (constraints.maxWidth > 605 &&
                          constraints.maxWidth <= 780) {
                        return createAccountLandscape(
                            logoCoefficient: 0.8, bigTextFont: 28);
                      } else if (constraints.maxWidth > 780 &&
                          constraints.maxWidth < 880) {
                        return createAccountLandscape(
                            logoCoefficient: 0.05, bigTextFont: 28);
                      } else if (constraints.maxWidth > 880 &&
                          constraints.maxWidth < 1000) {
                        return createAccountLandscape(
                            logoCoefficient: 0.05, bigTextFont: 28);
                      } else {
                        return createAccountLandscape(
                            logoCoefficient: 0.04, bigTextFont: 32);
                      }
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
