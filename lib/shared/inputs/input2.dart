import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../design/dimensions.dart';

class input2 extends StatelessWidget {

  final String inputText;
  final double width;

  const input2 ({Key? key, required this.inputText, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: 56,
      width: width,
      decoration: BoxDecoration(
        color: greyInputs,
        borderRadius: const BorderRadius.all(
            Radius.circular(radius15)),
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
