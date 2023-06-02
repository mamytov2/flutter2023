import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/components/circular_button.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
  });

  final String text;
  final String san;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.titleStyile,
        ),
        Text(san, style: AppTextStyles.sanTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularButton(
              icon: Icons.remove,
            ),
            SizedBox(width: 10),
            CircularButton(
              icon: Icons.add,
            ),
          ],
        ),
      ],
    );
  }
}
