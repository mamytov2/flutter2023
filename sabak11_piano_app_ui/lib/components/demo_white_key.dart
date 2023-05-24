import 'package:flutter/material.dart';

class DemoWhaiteKey extends StatefulWidget {
  const DemoWhaiteKey({
    super.key,
  });

  @override
  State<DemoWhaiteKey> createState() => _DemoWhaiteKeyState();
}

class _DemoWhaiteKeyState extends State<DemoWhaiteKey> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Container(
          width: 80,
          height: double.infinity,
          decoration: BoxDecoration(
            color: isPressed ? Colors.grey[300] : Colors.white,
            border: Border.all(color: Colors.black, width: 1),
          ),
        ),
      ),
    );
  }
}
