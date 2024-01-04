import 'dart:math';
import 'package:flutter/material.dart';
final randomizer=Random();

class DiceRoller extends StatefulWidget{
const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
  
    return _DiceRollerState();
  }


}

class _DiceRollerState extends State<DiceRoller>{
  var current_diceroll=2;
  

  void rolldice(){
    setState(() {
      current_diceroll=randomizer.nextInt(6)+1;
      
    });
   
  

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
             'assets/images/dice-$current_diceroll.png',
              width: 200,
            ),
           const SizedBox(height: 20),
          TextButton(
            onPressed: rolldice, 
            style: TextButton.styleFrom(foregroundColor: Colors.white,textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'))
          
          ],
        );
  }
}