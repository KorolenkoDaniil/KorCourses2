import 'package:flutter/material.dart';
import 'package:korcourses/pages/CreateAccount/createAccount.dart';
import 'package:korcourses/shared/buttons/button1.dart';

class buttonBlock extends StatelessWidget {
  const buttonBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            alignment: Alignment.centerLeft,
            child: button1(buttonText: "Get Started",  onTap: () => toCreateAccountPage(context), width: 300, fontSize: 32,)
        )
    );
  }
}

void toCreateAccountPage (BuildContext context){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => createAccountPage()),
  );
}

