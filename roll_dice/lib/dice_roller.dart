import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  Random randomizer = Random();
  void onRollDice() {
    setState(() {
      // >= 0, <6
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('images/dice-$currentDiceRoll.png', width: 200),
      TextButton(
        onPressed: onRollDice,
        style: TextButton.styleFrom(
            elevation: 8,
            backgroundColor: Colors.grey,
            shadowColor: Colors.deepOrange,
            padding: EdgeInsets.all(16),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            )),
        child: const Text('Roll dice'),
      )
    ]);
  }
}
