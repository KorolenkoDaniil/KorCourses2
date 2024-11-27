import 'package:flutter/material.dart';
import '../design/colors.dart';
import '../design/dimensions.dart';

class Input1 extends StatefulWidget {

  final String inputText;
  final TextEditingController controller;
  final double height;

  const Input1(
      {Key? key,
      required this.inputText,
      required this.controller,
      required this.height})
      : super(key: key);

  @override
  _Input1State createState() => _Input1State();

}

class _Input1State extends State<Input1> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: widget.height,

      width: 492,
      decoration: BoxDecoration(
        color: greyInputs,
        borderRadius: const BorderRadius.all(
            Radius.circular(radius15)),
      ),
      child: TextField(

        controller: widget.controller,

        cursorColor: Colors.white,

        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(
            color: Colors.grey,
          ),
          labelText: widget.inputText,
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
