import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  int incremmet = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeightPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$incremmet'),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  incremmet++;
                });

                print(incremmet);
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
