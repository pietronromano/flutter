import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.beginColor, this.endColor, {super.key});

  const GradientContainer.purple({super.key})
      : beginColor = Colors.deepPurple,
        endColor = Colors.indigo;

  final Color beginColor;
  final Color endColor;
  final Alignment beginAlignment = Alignment.topLeft;
  final Alignment endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: beginAlignment,
          end: endAlignment,
          colors: [beginColor, endColor],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
