import 'package:flutter/material.dart';

import '../design/colors.dart';
import '../design/dimensions.dart';

class Input2 extends StatefulWidget {
  final String inputText;
  final double width;
  final TextEditingController controller;
  final double height;

  const Input2({Key? key,
    required this.inputText,
    required this.width,
    required this.controller,
    required this.height})
      : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input2>{

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: greyInputs,
        borderRadius: const BorderRadius.all(Radius.circular(radius15)),
      ),
      child: TextField(
        controller: widget.controller,

        cursorColor: Colors.white,

        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(
            color: Colors.grey,
          ),
          labelText: widget.inputText, // Текст метки
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

