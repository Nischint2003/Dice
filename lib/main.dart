import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: ContainerGradient(Color.fromARGB(255, 38, 32, 32),
          Color.fromARGB(255, 203, 203, 206)),
    ),
  ));
}
