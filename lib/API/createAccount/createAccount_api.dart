import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../Entities/User.dart';
import '../serverURL.dart';


Future<void> createUser (BuildContext context,
    TextEditingController firstNameController,
    TextEditingController lastNameController,
    TextEditingController emailController,
    TextEditingController passwordController
    ) async {

  User newUser = new User(
      id: 0,
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      email: emailController.text,
      password: passwordController.text);


  String encodedUser = jsonEncode(newUser.toJson());

  print(encodedUser);


  try {
    final response = await http.post(
      serverURL,
      headers: {
        "Content-type": "application/json",
        "Accept": "text/plan",
      },
      body: encodedUser,
    );

    if (response.statusCode == 200 || response.statusCode == 201){
      print(response.body);
    }
    else{
      print("Ошибка: ${response.statusCode}, ${response.reasonPhrase} ");
    }
  }

  catch (e) {
    print('Ошибка при отправке запроса: $e');
  }


}



