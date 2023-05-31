import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 2;
  void rollDice() {
    setState(() {
      currentDiceImage = randomizer.nextInt(6) + 1;
      /* 1 to 6 , but if we don't add 1 the numbers will be generated between 0 to 5*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceImage.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize: 28), /*padding: const EdgeInsets.only(top: 15)*/
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
