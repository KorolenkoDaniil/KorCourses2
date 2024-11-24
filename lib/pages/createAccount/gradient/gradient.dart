import 'package:flutter/material.dart';

class gradient extends StatelessWidget {
  final Alignment begin;
  final Alignment end;

  const gradient({
    Key? key,
    required this.begin,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [
            Color(0xFF525461), // #525461 0%
            Color(0xFF525461), // rgba(82, 84, 97, 1) 20%
            Color(0xFF525461), // rgba(82, 84, 97, 1) 40%
            Color(0xFF525461), // rgba(82, 84, 97, 1) 50%
            Color(0xFD525461), // rgba(82, 84, 97, 0.99) 50%
            Color(0xFA525461), // rgba(82, 84, 97, 0.98) 60%
            Color(0xE6525461), // rgba(82, 84, 97, 0.9) 65%
            Color(0xB3525461), // rgba(82, 84, 97, 0.7) 70%
            Color(0x66525461), // rgba(82, 84, 97, 0.4) 75%
            Color(0x40525461), // rgba(82, 84, 97, 0.25) 80%
            Color(0x26525461), // rgba(82, 84, 97, 0.15) 90%
            Color(0x1A525461), // rgba(82, 84, 97, 0.1) 100%
          ],
          stops: [
            0.0,
            0.2,
            0.2,
            0.3,
            0.4,
            0.45,
            0.55,
            0.65,
            0.75,
            0.8,
            0.9,
            1.0,
          ],
        ),
      ),
    );
  }
}
