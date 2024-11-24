import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../design/dimensions.dart';

class input1 extends StatelessWidget {

  final String inputText;

  const input1({Key? key, required this.inputText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: 56,
      width: 492,
      decoration: BoxDecoration(
        color: greyInputs, // Убедитесь, что этот цвет определен в colors.dart
        borderRadius: const BorderRadius.all(
            Radius.circular(radius15)), // Проверьте, определено ли radius15
      ),
      child: TextField(
        cursorColor: Colors.white,
        obscureText: true, // Скрытый текст (например, для паролей)
        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(
            color: Colors.grey, // Цвет текста плавающей метки при фокусе
          ),
          labelText: inputText, // Текст метки
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black, // Цвет нижней линии в неактивном состоянии
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black, // Цвет нижней линии при фокусе
            ),
          ),
        ),
        style: const TextStyle(
          color: Colors.white, // Цвет текста, который вводит пользователь
        ),
      ),
    );
  }
}
