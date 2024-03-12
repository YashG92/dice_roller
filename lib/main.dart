import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceRoll());
}

class DiceRoll extends StatefulWidget {
  DiceRoll({super.key});
  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int? random = 1;
  int? random2 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Rolling Game'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      random = Random().nextInt(6) + 1;
                    });
                  },
                  child: Container(
                    height: 400,
                    width: 200,
                    child: Image.asset('assets/images/$random.png'),
                    color: Colors.amberAccent,
                  ),
                ),
                Container(
                  height: 400,
                  width: 200,
                  child: Image.asset('assets/images/$random2.png'),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
                setState(() {
                      random = Random().nextInt(6) + 1;
                    });
            }, child: Text('hello'),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
