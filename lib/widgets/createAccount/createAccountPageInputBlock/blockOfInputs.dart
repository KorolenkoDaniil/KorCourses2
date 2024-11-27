import 'package:flutter/material.dart';
import '../../../API/createAccount/createAccount_api.dart';
import '../../../shared/buttons/button1.dart';
import '../../../shared/inputs/input1.dart';
import '../../../shared/inputs/input2.dart';

class BlockOfInputs extends StatefulWidget {
  final double inputsHeight;
  final double buttonFontSize;

  BlockOfInputs({
    super.key,
    required this.inputsHeight,
    required this.buttonFontSize,
  });

  @override
  _BlockOfInputs createState() => _BlockOfInputs();
}

class _BlockOfInputs extends State<BlockOfInputs> {
  // Создайте контроллеры внутри State
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Освобождение ресурсов
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 492,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Row(
                children: [
                  Input2(
                    inputText: 'First name',
                    width: (constraints.maxWidth - 20) / 2,
                    controller: firstNameController,
                    height: widget.inputsHeight,
                  ),
                  SizedBox(width: 20),
                  Input2(
                    inputText: 'Last name',
                    width: (constraints.maxWidth - 20) / 2,
                    controller: lastNameController,
                    height: widget.inputsHeight,
                  ),
                ],
              );
            },
          ),
          SizedBox(height: 20), // Отступ между строками
          SizedBox(
            width: 492,
            child: Input1(
              inputText: 'Email',
              controller: emailController,
              height: widget.inputsHeight,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 492,
            child: Input1(
              inputText: 'Password',
              controller: passwordController,
              height: widget.inputsHeight,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 492,
            child: Button1(
              buttonText: 'Create new account',
              onTap: () => createUser(
                context,
                firstNameController,
                lastNameController,
                emailController,
                passwordController,
              ),
              width: 492,
              fontSize: widget.buttonFontSize,
            ),
          ),
        ],
      ),
    );
  }
}
