import 'package:flutter/material.dart';
import "package:dice_roller/dice_roller.dart";

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightBlue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
