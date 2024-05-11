import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dice Game"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.black,
        body: const Mystatefullwidget(),
      ),
    ),
  );
}

//stateless widget part below
/*
class MystatelessWidget extends StatelessWidget {
  const MystatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int leftDice = 1;
    int rightDice = 1;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: TextButton(
                onPressed: () {
                  leftDice = random.nextInt(6) + 1;
                  print("This left one.");
                },
                child: Image.asset('images/dice$leftDice.png')),
          ),
          Expanded(
            // flex: 1,

            child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDice = random.nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDice.png')),
          ),
        ],
      ),
    );
  }
}
*/

class Mystatefullwidget extends StatefulWidget {
  const Mystatefullwidget({super.key});

  @override
  State<Mystatefullwidget> createState() => _MystatefullwidgetState();
}

class _MystatefullwidgetState extends State<Mystatefullwidget> {
  //Random random = Random();
  int leftDice = 1;
  int rightDice = 1;

  void diceNumberChanging() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      // leftDice = random.nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
      //rightDice = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: TextButton(
              onPressed: () {
                /*
                  setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  // leftDice = random.nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                  //print("This left one.");
                });
                */

                //starts here
                diceNumberChanging();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            // flex: 1,

            child: TextButton(
                onPressed: () {
                  /*
                  setState(() {
                    rightDice = Random().nextInt(6) + 1;
                    //rightDice = random.nextInt(6) + 1;
                    leftDice = Random().nextInt(6) + 1;
                    //print("This right one.");
                  });
                   */

                  //starts here
                  diceNumberChanging();
                },
                child: Image.asset('images/dice$rightDice.png')),
          ),
        ],
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int leftDice = random.nextInt(6) + 1;
    int rightDice = random.nextInt(6) + 1;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: TextButton(
                onPressed: () {
                  print("This left one.");
                },
                child: Image.asset('images/dice$leftDice.png')),
          ),
          Expanded(
            // flex: 1,

            child: TextButton(
                onPressed: () {
                  print("This is right one.");
                },
                child: Image.asset('images/dice$rightDice.png')),
          ),
        ],
      ),
    );
  }
}
*/
