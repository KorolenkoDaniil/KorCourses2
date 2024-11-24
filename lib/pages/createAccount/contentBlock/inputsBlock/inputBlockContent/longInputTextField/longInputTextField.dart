import 'package:flutter/material.dart';

class LongInputTextField extends StatelessWidget {
  final String buttonText;

  const LongInputTextField({Key? key, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      obscureText: true,
      decoration: InputDecoration(
        floatingLabelStyle: TextStyle(
          color: Colors.grey, // Цвет текста плавающей метки при фокусе
        ),
        labelText: buttonText, // Текст метки
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black, // Цвет нижней линии в неактивном состоянии
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black, // Цвет нижней линии при фокусе
          ),
        ),
      ),
      style: TextStyle(
        color: Colors.white, // Цвет текста, который вводит пользователь
      ),
    );
  }
}
