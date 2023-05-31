// ignore_for_file: camel_case_types

import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft; // variable
const endAlignment = Alignment.bottomRight; // variable

/*
 it defines alignment or null type . if only var is given then it would be dynamic type 
 Alignment? startAligment
*/

class ContainerGradient extends StatelessWidget {
   const ContainerGradient(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAligment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
