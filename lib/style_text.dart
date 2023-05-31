// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Style_Text extends StatelessWidget {
  const Style_Text(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(26, 0, 0, 0),
      ),
    );
  }
}
