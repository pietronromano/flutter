import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  // const MyApp = MaterialApp(home: Text("Hello Flutter"));
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
        //body: GradientContainer(Colors.deepPurple, Colors.deepOrangeAccent),
      ),
    ),
  );
}
