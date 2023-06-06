import 'package:flutter/material.dart';
import 'package:sabak19_bmi_ulantuu3/components/circular_button.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addBasuu,
    required this.removedBasuu,
  });

  final String text;
  final String san;
  final void Function() addBasuu;
  final void Function() removedBasuu;

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
          children: [
            CircularButton(
              icon: Icons.remove,
              basuu: removedBasuu,
            ),
            const SizedBox(width: 10),
            CircularButton(
              icon: Icons.add,
              basuu: addBasuu,
            ),
          ],
        ),
      ],
    );
  }
}
