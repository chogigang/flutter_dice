import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random().nextInt(6) + 1;

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    super.key,
  });
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-$randomizer.png';

  void rollDice() {
    setState(() {
      final randomizer = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$randomizer.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // 주축은 수직 축
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,
              // ),
              foregroundColor: Colors.white, ////foregroundColor 전경색, 도구색
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('주사위 돌리기'),
        )
      ],
    );
  }
}
