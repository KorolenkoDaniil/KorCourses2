import 'package:flutter/material.dart';

import '../../pages/createAccount/createAccount.dart';


void toCreateAccount(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CreateAccountPage()),
  );
}
