import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

// widget class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// state class
class _DiceRollerState extends State<DiceRoller> {
  //final randomizer = Random();
  var currenticeRoll = 2; //var activeDiceImage = 'assests/pic/dice-2.png';

  void rollDice() {
    //var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currenticeRoll = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assests/pic/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //for centre
      children: [
        Image.asset(
          'assests/pic/dic-$currenticeRoll.png';//activeDiceImage, //'assests/pic/dice-2.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            //  padding: const EdgeInsets.only(
            //   top:20,
            //   ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
