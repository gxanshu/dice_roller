import 'package:flutter/material.dart';
import "dart:math";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int randImage = 1;
  var random = Random();

  void onClickHandler() {
    setState(() {
      randImage = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-$randImage.png', width: 64),
        TextButton(
          onPressed: onClickHandler,
          child: const Text("click me"),
        )
      ],
    );
  }
}
