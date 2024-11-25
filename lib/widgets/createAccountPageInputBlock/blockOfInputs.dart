import 'package:flutter/material.dart';
import 'package:korcourses/pages/Home/home.dart';

import '../../shared/buttons/button1.dart';
import '../../shared/inputs/input1.dart';
import '../../shared/inputs/input2.dart';

class blockOfInputs extends StatelessWidget {
  const blockOfInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 492,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Установите выравнивание
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Row(
                  children: [
                    input2(
                      inputText: 'First name',
                      width: (constraints.maxWidth - 20) / 2,
                    ),
                    SizedBox(width: 20),
                    input2(
                      inputText: 'Last name',
                      width: (constraints.maxWidth - 20) / 2,
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 20), // Отступ между строками
            SizedBox(
              width: 492,
              child: input1(inputText: 'Email'),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 492,
              child: input1(inputText: 'Password'),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 492,
              child: button1(buttonText: 'Create new account', onTap: () => toCreate(context), width: 492, fontSize: 20),
            ),
          ],
        ));
  }
}

void toCreate (BuildContext context){

  // Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
}


