import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int firsDice = 1;
  int secondDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 5',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          firsDice = Random().nextInt(6) + 1;
                          secondDice = Random().nextInt(6) + 1;
                          setState(() {});
                          print(firsDice);
                          print(secondDice);
                        },
                        child: Image.asset('images/dice$firsDice-png.png'))),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          setState(() {});
                          firsDice = Random().nextInt(6) + 1;
                          secondDice = Random().nextInt(6) + 1;
                        },
                        child: Image.asset('images/dice$secondDice-png.png'))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
