import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  var currentDice = 2;
  void rollDice() {
    setState(() {
    currentDice = Random().nextInt(6) + 1;  
    });
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDice.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
              ),
              child: const Text('Roll Dice!'),
            ),
          ],
        );
  }
}