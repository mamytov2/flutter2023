import 'package:flutter/material.dart';
import 'package:sabak_6_extract_widget_and_constants/components/custom.button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componens and constans"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.network(
                "https://i0.wp.com/kompiu-pomosch.com/wp-content/uploads/2021/01/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BD%D0%B5%D0%B8%D1%81%D0%BF%D1%80%D0%B0%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D0%B8-%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%B0.jpg?w=600&ssl=1"),
            const SizedBox(
              height: 5,
            ),
            const CustomButton(
              icon: Icons.phone,
              text: 'менин телефонум',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(
              icon: Icons.mail,
              text: "Электрондук почта",
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
