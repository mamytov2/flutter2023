import 'package:flutter/material.dart';
import 'package:sabak16_bmi_and_snippets/theme/app_colors.dart';
import 'package:sabak16_bmi_and_snippets/theme/app_texts.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      color: AppColors.cardColor,
      child: Column(
        children: const [
          Icon(Icons.male),
          AppTexts.male,
        ],
      ),
    ));
  }
}
