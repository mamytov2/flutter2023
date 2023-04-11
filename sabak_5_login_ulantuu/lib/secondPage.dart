// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class iamrich extends StatelessWidget {
  const iamrich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text(
            "Тапшырма 3",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 8,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'm Rich",
              style: TextStyle(fontSize: 48, fontFamily: "Sofia-Regular.ttf"),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/Briliant.png"),
            ),
          ],
        ),
      ),
    );
  }
}
